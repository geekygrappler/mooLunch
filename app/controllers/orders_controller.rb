class OrdersController < ApplicationController
    def create
        puts params
        @lunch = Lunch.find(params[:lunch_id])
        @order = @lunch.orders.create(order_params)
        redirect_to lunch_path(@lunch)    
    end
    
    private
    
        def order_params
            params.require(:order).permit(:name, :order)
        end

end
