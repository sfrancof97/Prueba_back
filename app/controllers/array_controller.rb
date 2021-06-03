class ArrayController < ApplicationController 
    def create 
        @lenght = require_params()
        @array =Information.new(array: ArrayCreator.new(@lenght[:lenght]).array_creator) 

        if @lenght[:lenght].to_i >= 10
            @array.save
            render json: @array, status: :created
        else
            render json: { error: "error" }, status: :unprocessable_entity
        end
    end

    def show
        @array = Information.find(params[:id])
        @range = ArrayShowCreator.new.array_show_creator(@array[:array])
        render json: @range, status: :ok
        
    end

    private

    def require_params
        params.require(:attributes).permit(:lenght)
    end
end