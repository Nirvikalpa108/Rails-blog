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
        format.json { render :show, status: :created, location: @cook }
      else
        format.html { render :new }
        format.json { render json: @cook.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @cook.update(post_params)
        format.html { redirect_to @cook, notice: 'Cook post was successfully updated.' }
        format.json { render :show, status: :ok, location: @cook }
      else
        format.html { render :edit }
        format.json { render json: @cook.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @cook.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Cook post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_cook
    @cook = Cook.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def cook_params
    params.require(:cook).permit(:name, :cuisine, :city)
  end
end