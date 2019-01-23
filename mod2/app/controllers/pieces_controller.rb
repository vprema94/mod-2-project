class PiecesController < ApplicationController

  def show
    @piece = Piece.find(params[:id])
  end

  def index
    @pieces = Piece.all
  end

  def new
    @piece = Piece.new
    @categories = Category.all
  end

  def create
    @piece = Piece.new(piece_params)
    @categories = Category.all
    if @piece.valid?
      @piece.save
      redirect_to piece_path(@piece)
    else
      render :new
    end

  end

  def edit
    @piece = Piece.find(params[:id])
  end

  def update
    @piece = Piece.find(params[:id])
    if @piece.update(piece_params)
      redirect_to piece_path(@piece)
    else
      render :edit
    end
  end

  def destroy
    @piece = Piece.find(params[:id])
    @piece.destroy
    redirect_to pieces_path
  end

  private

  def piece_params
    params.require(:piece).permit(:name, :clean_lvl, :color, :image, :category_id)
  end

end
