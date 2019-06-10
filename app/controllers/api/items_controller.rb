class Api::ItemsController < ApplicationController
  before_action :set_item, only: [:update, :destroy]

  def index 
    render json: Item.all 
  end

  def create
    item = Item.new(item_params)
    if item.save
      render json: item
    else 
      render json: { errors: item.errors }, status: :unprocessable_entity
    end
  end

  def update
    @item.update(complete: !@item.complete)
    render json: @item
  end

  def destroy
    @item.destroy
    rendeer json: { message: "ITEM Destroyed" }
  end

  private
    def item_params
      params.require(:item).permit( :item_id, :price, :name, :description )
    end

    def set_item
      @item = Item.find(params[:id])
    end

end