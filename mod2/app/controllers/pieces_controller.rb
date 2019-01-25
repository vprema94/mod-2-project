class PiecesController < ApplicationController

  before_action :authorize!, only: [:new, :edit, :create, :update]

  def show
    @piece = Piece.find(params[:id])
  end

  def index
    @pieces = current_user.pieces
    @tops = @pieces.where("category_id = 1")
    @bottoms = @pieces.where("category_id = 2")
    @dr = @pieces.where("category_id = 3")
    @suits = @pieces.where("category_id = 4")
    @cj = @pieces.where("category_id = 5")
    @shoes = @pieces.where("category_id = 6")
    @acc = @pieces.where("category_id = 7")
  end

  def new
    @piece = Piece.new
    @categories = Category.all
  end

  def create
    @piece = Piece.new(piece_params)
    @categories = Category.all
    @piece.user_id = session[:user_id]
    if @piece.valid?
      @piece.save
      redirect_to piece_path(@piece)
    else
      render :new
    end
  end

  def edit
    @piece = Piece.find(params[:id])
    @categories = Category.all
  end

  def update
    @piece = Piece.find(params[:id])
    @categories = Category.all
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
    params.require(:piece).permit(:name, :clean_lvl, :color, :image, :category_id, :user_id)
  end

end
