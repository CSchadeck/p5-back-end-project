class UsersController < ApplicationController
   # skip_before_action :authorize

        def index
            render json: User.all
        end

        def showWithOutLogIn
            render json: User.find(params[:id])
        end
        
        def show
            #user = User.find(params[:id])
           # if user
              #  render json: user.to_json 
           # else
             #   render json: {error: "User not found"}, status: :not_found
            #end
            uers = User. user = User.find_by(id: session[:user_id])
                  render json: user,status: :ok
        end
    
        def create
            user = User.create!(user_params)
            if user.valid?
            session[:user_id] = user.id
            render json: user, status: :created
            else
            render json: { error: user.errors.full_messages }, status: :unprocessable_entity
            end
        end

        def current_user
            user= User.find_by(id: session[:user_id])
            if @user
                render json: @user,  status: 200
            end
        end

        def update
            user = User.find(params[:id])
            user.update(user_params)
            render json: user
        end

        private
        def user_params
        params.permit(:username, :password, :password_confirmation, :email, :bio)
        end

end