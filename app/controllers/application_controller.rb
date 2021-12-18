class ApplicationController < ActionController::Base
    include DeviseTokenAuth::Concerns::SetUserByToken
    protect_from_forgery prepend: true
    def health_check
        begin 
            render json: "Health Check: OK"
        rescue 
            render json: "Health Check: ERROR"
        end
    end
end
