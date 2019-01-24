class PiecesController < ApplicationController

  before_action :authorize!, only: [:new, :edit, :create, :update]

  def show
    @piece = Piece.find(params[:id])
  end

  def index
    @pieces = Piece.all
  end

  def new
    @piece = Piece.new
  end

  def create
    byebug
    @piece = Piece.new(piece_params)
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
      redirect_to edit_piece_path
    end
  end

  def destroy
    @piece = Piece.find(params[:id])
    @piece.destroy
    redirect_to pieces_path
  end

  private

  def piece_params
    params.require(:piece).permit(:name, :clean_lvl, :color, :image)
  end

end
