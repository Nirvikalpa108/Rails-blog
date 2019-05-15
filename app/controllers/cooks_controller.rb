class CooksController < ApplicationController

  def index
    @cooks = Cook.all
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

  def edit
    @cook = Cook.find(params[:id])
  end

  def update
    @cook = Cook.find(params[:id])

    if @cook.update(cook_params)
      redirect_to @cook, notice: "Cook was successfully edited."
    else
      render :edit
    end
  end

  def destroy
    @cook = Cook.find(params[:id])

    @cook.destroy
    redirect_to cooks_path, notice: "Cook was successfully destroyed."
  end

  def cook_params
    params.require(:cook).permit(:city, :cuisine, :name)
  end
end
