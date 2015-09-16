class StepsController < ApplicationController

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
    @step = Step.find(params[:id])
  end

  private

  def step_params
    params.require(:step).permit(:name, :description)
  end
end
