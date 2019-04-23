class CooksController < ApplicationController
  before_action :set_cook, only: [:show, :edit, :update, :destroy]

  def index
    @cooks = Cook.all
  end

  def show
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

  def update
    respond_to do |format|
      if @cook.update(post_params)
        format.html { redirect_to @cook, notice: 'Cook post was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @cook.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Cook post was successfully destroyed.' }
    end
  end

  private
  def set_cook
    @cook = Cook.find(params[:id])
  end

  def cook_params
    params.require(:cook).permit(:name, :cuisine, :city)
  end
end