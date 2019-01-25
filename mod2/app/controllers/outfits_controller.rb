class OutfitsController < ApplicationController

  before_action :authorize!, only: [:new, :edit, :create, :update]

  def show
    @outfit = Outfit.find(params[:id])
    @pieces = @outfit.pieces
  end

  def index
    @outfits = current_user.outfits
  end

  def new
    @outfit = Outfit.new
    @pieces = current_user.pieces
    @tops = @pieces.where("category_id = 1")
    @bottoms = @pieces.where("category_id = 2")
    @dr = @pieces.where("category_id = 3")
    @suits = @pieces.where("category_id = 4")
    @cj = @pieces.where("category_id = 5")
    @shoes = @pieces.where("category_id = 6")
    @acc = @pieces.where("category_id = 7")
    @occasions = Occasion.all
  end

  def create
    @outfit = Outfit.new(outfit_params)
    @outfit.user_id = session[:user_id]
    @clothing = params["outfit"]["clothing_outfits"]["piece_id"].reject!(&:blank?)
    
    if @outfit.valid?
      @outfit.save
      @clothing.each do |id|
        piece = Piece.find(id)
        @outfit.pieces << piece
      end
      redirect_to outfit_path(@outfit)
    else
      redirect_to new_outfit_path
    end
  end

  def edit
    @outfit = Outfit.find(params[:id])
    @pieces = current_user.pieces
    @tops = @pieces.where("category_id = 1")
    @bottoms = @pieces.where("category_id = 2")
    @dr = @pieces.where("category_id = 3")
    @suits = @pieces.where("category_id = 4")
    @cj = @pieces.where("category_id = 5")
    @shoes = @pieces.where("category_id = 6")
    @acc = @pieces.where("category_id = 7")
    @occasions = Occasion.all
  end

  def update
    @outfit = Outfit.find(params[:id])
    if @outfit.update(outfit_params)
      redirect_to outfit_path(@outfit)
    else
      redirect_to edit_outfit_path
    end
  end

  def destroy
    @outfit = Outfit.find(params[:id])
    @outfit.destroy
    redirect_to outfits_path
  end

  private

  def outfit_params
    params.require(:outfit).permit(:name, :rating, :user_id, :occasion_id, :piece_id => [])
  end

end