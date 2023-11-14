class OrdersController < ApplicationController
    # rescue_from ActiveRecord::RecordNotFound, with: :render_no_item_found
    def index
        render json: Order.all, status: :ok
    end

    def show
        render json: Order.find(params[:id]), status: :ok
    end

    def create
        order = Order.create!(order_params)

        render json: order, status: :created
    end

    def update
        order = Order.find(params[:id])

        order.update!(order_params)

        render json: order, status: :ok
    end

    private

    def order_params
        params.permit(:user_id, :item_id, :status)
    end

    def render_no_item_found
        render json: {msg: "Item not found"}, status: :not_found
    end
end