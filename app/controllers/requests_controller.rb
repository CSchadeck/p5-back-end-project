class RequestsController < ApplicationController
    skip_before_action :authorize, only:[:create, :index,]
    def index
        render json: Request.all
    end

    def show     
        request = Request.find(params[:id])
        render json: request 
    end

    def update
        request = Request.find(params[:id])
        request.update!(request_params)
        render json: request
    end

    def create
        request = Request.create!(request_params)
        render json: request, status: :created
    end


    private

    def request_params
        params.permit(:title, :user_id, :image, :description, :start_date, :end_date, :accepted, :accepted_by)
    end

end 