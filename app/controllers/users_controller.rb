class UsersController < ApplicationController
   # skip_before_action :authorize, only: [:create, :index, :update , :show, :showWithOutLogIn]

    def index
        render json: User.all
    end

    def showWithOutLogIn
        render json: User.find(params[:id])
    end

    def show     
       # user = User.find_by(id: session[:user_id])
        render json: @current_user
    end
    
    def update
        user = User.find(params[:id])
        user.update!(user_params)
        render json: user
    end

    def create
       # user = User.create!(user_params)
       # session[:user_id] = user.id
        #render json: user, status: :created
        user = User.create!(user_params)
        if user.valid?
          session[:user_id] = user.id
          render json: user, status: :created
        else
          render json: { error: user.errors.full_messages }, status: :unprocessable_entity
       end
    end
    def current_user
        @user= User.find_by(id: session[:user_id])
        if @user
            render json: @user, except: [:password_digest, :created_at, :updated_at], statis: 200
        end

    private
    def user_params
      params.permit(:username, :password, :password_confirmation, :email, :bio)
    end
end
