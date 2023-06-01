class WeeksController < ApplicationController
    before_action :current_week, only: [:show, :edit, :update]

    def index
        @weeks = Week.all 
    end

    def new 
        @week = Week.new
    end 

    def create
        if @week.save? 
           redirect_to week_path(@week), notice: "Created!"
        else 
            render :edit 
        end 
    end 

    def show 
    end 

    def update
        @week.update(week_params)

        redirect_to week_path(@week), notice: "Updated"
    end 

    def destroy 
    end 

    private 

    def week_params 
        params.require(:week).permit(:range)
    end 

    def current_week
        @week = Week.find(params[:id]) 
    end 
end
