class DriversController < ApplicationController
    skip_before_action :verify_authenticity_token, :only => [:create]

    def create
        driver = Driver.new(driver_params)
        if driver.save
            render json: driver, status: :created
        else
            render json: driver.errors, status: :unprocessible_entity
        end
    end 

    private 

    def driver_params
        params.require(:driver).permit(:license_image, user_attributes: [:name, :email, :password, :password_confirmation])
    end
end
