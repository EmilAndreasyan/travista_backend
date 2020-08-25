class Api::V1::CountriesController < ApplicationController
    #include CurrentUserConcern, git add . adding country controller, adding city controller 
    #before_action :set_user
    include CurrentUserConcern

    def index
        @countries = Country.all
        render json: @countries
    end
    
    def show
        @country = Country.find(params[:id])
        render json: @country
    end
    
    def new
        @country = Country.new(country_params)
        if @country.save
            render json: @country
        else
            render json: {error: 'Error adding a country'}
        end
    end
    
    def edit
        country = Country.find(params[:id]) 
    end
    
    def update
        country = Country.find(params[:id]) 
        country.update(country_params)
        if country.save
        render json: country
        else
        render json: {error: 'Error updating country'}
        end
    end
    
    
    def destroy
        country = Country.find(params[:id])
        country.destroy
    end
    
    private

    # def set_user
    #     @user ||= User.find(params[:user_id])
    # end
    
    def country_params
        params.require(:country).permit(:user_id, :name, :flag_url, :capital, :language, :currency, :area)
    end  
end
