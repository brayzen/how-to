class TutorialsController < ApplicationController
  def index
    @tutorials = Tutorial.all
  end

  def new
    @tutorial = Tutorial.new
  end

  def edit
  end

  def update
  end

  def create
    redirect_to new_tutorial_step_path
  end

  def destroy
  end
end
