class ItemsController < ApplicationController
    def index
        render json: Item.all, status: :ok
    end

    def show
        render json: Item.find(params[:id]), status: :ok
    end

    def create
        item = Item.create!(item_params)

        render json: item, status: :created
    end
    private

    def item_params
        params.permit(:name, :price)
    end
end