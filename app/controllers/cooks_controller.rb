class CooksController < ApplicationController

  def index
    @cooks = Cook.all
  end

  end
    def show
    @cook = Cook.find(params[:id])
  end

  def new
    @cook = Cook.new
  end

  def create
    @cook = Cook.new(cook_params)

    if @cook.save
      redirect_to @cook, notice: "Cook post was successfully created."
    else
      render :new
    end
  end

  def cook_params
    params.require(:cook).permit(:city, :cuisine, :name)
  end
