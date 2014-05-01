class OptionsController < ApplicationController
    def create
        @lunch = Lunch.find(params[:lunch_id])
        @option = @lunch.options.create(option_params)
        redirect_to lunch_path(@lunch)    
    end
    
    private
    
        def option_params
            params.require(:option).permit(:option, :description)
        end
end
