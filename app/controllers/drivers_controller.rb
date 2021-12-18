class DriversController < ApplicationController
    skip_before_action :verify_authenticity_token, :only => [:create]

    def create
        driver = Driver.new(driver_params)
        if driver.save
            render json: driver, status: :created
        else
            render json: driver.errors, status: :unprocessable_entity
        end
    end 

    private 

    def driver_params
        request_params = params.require(:driver).permit(:license_image, user_attributes: [:name, :email, :password, :password_confirmation])
        user_attributes = request_params[:user_attributes].merge!("confirmed_at" => Time.now)
        request_params[:user_attributes] = user_attributes
        request_params
    end
end
