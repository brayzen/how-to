 class TutorialsController < ApplicationController
  before_action :set_tutorial, only: [:show, :edit, :update, :destroy]

  def index
    @tutorials = Tutorial.all
  end

  def new
    @tutorial = Tutorial.new
  end

  def show
  end

  def create
    @tutorial = Tutorial.new(tutorial_params)
    if @tutorial.save
      flash[:notice] = "Tutorial has been created, now add some steps."
      redirect_to @tutorial
    else
      flash.now[:error] = "Invalid data, please try again."
      render :new
    end
  end

  def edit
  end


  def update
    if @tutorial.update_attributes(tutorial_params)
      redirect_to @tutorial, notice: 'Tutorial was successfully updated.'
    else
      render :edit
    end
  end


  def destroy
    @tutorial.destroy
    redirect_to tutorials_path
  end

  private

  def set_tutorial
    @tutorial = Tutorial.find(params[:id])
  end

  def tutorial_params
    params.require(:tutorial).permit(:title)
  end
end

