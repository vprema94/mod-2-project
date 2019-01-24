class OutfitsController < ApplicationController

  before_action :authorize!, only: [:new, :edit, :create, :update]

  def show
    @outfits = current_user.outfits
  end

  def index
    @outfits = Outfit.all
  end

  def new
    @outfit = Outfit.new
  end

  def create
    @outfit = Outfit.new(outfit_params)
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
    params.require(:outfit).permit(:name, :rating, :user_id, :occassion_id)
  end

end
