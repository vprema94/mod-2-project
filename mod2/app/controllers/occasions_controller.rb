class OccasionsController < ApplicationController
  def show
    @occasion = Occasion.find(params[:id])
  end

  def index
    @occasions = Occasion.all
  end

  def new
    @occasion = Occasion.new
  end

  def create
    @occasion = Occasion.new(occasion_params)
    if @occasion.valid?
      @occasion.save
      redirect_to occasions_path
    else
      render :new
  end

  private

  def occasion_params
    params.require(:occasion).permit(:name)
  end
end
