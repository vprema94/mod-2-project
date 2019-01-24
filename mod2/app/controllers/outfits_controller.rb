class OutfitsController < ApplicationController

  def show
    @outfit = Outfit.find(params[:id])
  end

  def index
    @outfits = Outfit.all
  end

  def new
    @outfit = Outfit.new
    @outfit.clothing_outfit.build(@outfit.id, @piece.id)
    @pieces = current_user.pieces
    @tops = @pieces.where("category_id = 1")
    @bottoms = @pieces.where("category_id = 2")
    @dr = @pieces.where("category_id = 3")
    @suits = @pieces.where("category_id = 4")
    @cj = @pieces.where("category_id = 5")
    @shoes = @pieces.where("category_id = 6")
    @acc = @pieces.where("category_id = 7")
  end

  def create
    byebug
    @outfit = Outfit.new(outfit_params)
    @outfit.user_id = session[:user_id]
    @top = outfit_params[:piece_id]
    byebug
    if @outfit.valid?
      @outfit.save
      redirect_to outfit_path(@outfit)
    else
      redirect_to new_outfit_path
    end
  end

  def edit
    @outfit = Outfit.find(params[:id])
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
    params.require(:outfit).permit(:name, :rating, :user_id, :occassion_id, :piece_id)
  end

end
