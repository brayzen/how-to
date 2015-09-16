class StepsController < ApplicationController
  def index
    @steps = Step.all
  end

  def new
    @step = Step.new
  end

  def edit
  end

  def update
  end

  def create
  end

  def destroy
  end
end
