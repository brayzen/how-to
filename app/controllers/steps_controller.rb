  class StepsController < ApplicationController
    before_action :set_step, only: [:show, :edit, :update, :destroy]

  def new
    @tutorial = Tutorial.find params[:tutorial_id]
    @step = @tutorial.steps.build
  end


  def create
    @tutorial = Tutorial.find(params[:tutorial_id])
    @step = @tutorial.steps.create(step_params)
    if @step.save
      flash.now[:notice] = "A step has been created, now add some steps."
      redirect_to @tutorial
    else
      flash.now[:error] = "Invalid data, please try again."
      render :new
    end
  end

  def edit
  end

  def update
    if @step.update_attributes(step_params)
      redirect_to @step, notice: 'Step was successfully updated.'
    else
      render :edit
    end
  end


  def destroy
    @step.destroy
    redirect_to @tutorial
  end

  private

  def set_step
    @tutorial = Tutorial.find(params[:tutorial_id])
    @step = @tutorial.steps.find(params[:id])
  end

  def step_params
    params.require(:step).permit(:name, :description)
  end
end
