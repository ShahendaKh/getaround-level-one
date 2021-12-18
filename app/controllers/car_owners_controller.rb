class CarOwnersController < ApplicationController
    skip_before_action :verify_authenticity_token, :only => [:create]

    def create
        car_owner = CarOwner.new(car_owner_params)
        if car_owner.save
            render json: car_owner, status: :created
        else
            render json: car_owner.errors, status: :unprocessable_entity
        end
    end 

    private 

    def car_owner_params
        params.require(:car_owner).permit(user_attributes: [:name, :email, :password, :password_confirmation])
    end
end
