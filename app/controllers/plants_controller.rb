class PlantsController < ApplicationController
    def index
        plant = Plant.all 
        render json: plant
    
    end
    def show
        plant = Plant.find_by(id: params[:id])
        render json: plant
    end
    def create
        plant = Plant.create(plant_finder)
       
        render json: plant, status: :created
    end
    private

    def plant_finder
        params.permit(:name, :image, :price)
    end

end
