class UsersController < ApplicationController
    skip_before_action :authorize, only: :create

    def index
        render json: User.all
    end

    def show     
        def show
            render json: @current_user
          end
  end
    
    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end

    def create
        user = User.create!(user_params)
        session[:user_id] = user.id
        render json: user, status: :created
    end


    private
    def user_params
      params.permit(:username, :password, :password_confirmation, :email, :bio,:request)
    end
