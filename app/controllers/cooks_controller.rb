class CooksController < ApplicationController
  before_action :set_cook, only: [:show, :edit, :update, :destroy]

  def index
    @cooks = Cook.all
  end

  def show
    @cook = Cook.find(params[:id])
  end

  def new
    @cook = Cook.new
  end

  def edit
  end

  def create
    @cook = Cook.new(cook_params)

    respond_to do |format|
      if @cook.save
        format.html { redirect_to @cook, notice: 'Cook post was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def cook_params
    params.require(:cook).permit(:name, :cuisine, :city)
  end
end