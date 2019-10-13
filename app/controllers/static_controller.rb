class StaticController < ApplicationController
    def home
        render json: {status:"it's Working"}
    end
end