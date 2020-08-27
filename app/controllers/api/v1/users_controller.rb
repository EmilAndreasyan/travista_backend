class Api::V1::UsersController < ApplicationController

    def new
        user = User.new
        render json: {user: user}
    end

    # def create
    #     user = User.create!(first_name: params["user"]["first_name"], last_name: params["user"]["last_name"], email: params["user"]["email"], password: params["user"]["[password"],
    #     password_confirmation: params["user"]["password_confirmation"])
    #     if user
    #         session[:user_id] = user.id
    #         render json: {status: :created, user: user}
    #     else
    #         render json: {status: 500}
    #     end
    # end

    def create
        user = User.create!(user_params)
        if user
            session[:session_id] = user.id
            render json: {status: :created, user: user}
        else
            render json: {status: 500}
        end
    end
    
    # def new
    #     @user = User.new
    # end

    # def create 
    #     @user = User.new(user_params)
    #     if  @user.save
    #         flash[:notice] = "You have successfully created an account"
    #         session[:user_id] = @user.id
    #         redirect_to @user
    #     else
    #        flash[:notice] = "Please, enter valid data"
    #        render :new
    #     end
    # end

    # def index
    #     @users = User.all
    #     @user = User.find_by(id: params[:id])
    # end

    # def show
    #     @user = User.find_by(id: params[:id])
    # end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
end
