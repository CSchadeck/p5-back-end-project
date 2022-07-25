class ConnectionsController < ApplicationController
    skip_before_action :authorize, only:[:create, :index]
 
    def index
        render json: Connection.all
    end

    def show
    connection = Connection.find(params[:id])
        render json: connection
    end

    def update
    conncetion = Connection.find(params[:id])
        conncetion.update!(connection_params)
        render json: conncetion
    end

private

    def connection_params
        params.permit(:user_id,:request_id)
    end

end