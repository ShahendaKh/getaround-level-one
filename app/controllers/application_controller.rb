class ApplicationController < ActionController::Base

    def health_check
        begin 
            render json: "Health Check: OK"
        rescue 
            render json: "Health Check: ERROR"
        end
    end
end
