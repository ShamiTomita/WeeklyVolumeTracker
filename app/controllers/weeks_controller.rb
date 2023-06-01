class WeeksController < ApplicationController
    before_action :current_week, only: [:show, :edit, :update]

    def index
        @weeks = Week.all 
    end

    def new 
        @week = Week.new
    end 

    def add
        t = Date.today
        week = Week.create(range:t.all_week)
        days = t.all_week.to_a.map {|day| Day.create(day: day, week_id: week.id)}
        if week.save
           redirect_to root_path, notice: "Created!"
        else 
            redirect_to root_path, notice: "Wait till next week"
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

    def current_week
        @week = Week.find(params[:id]) 
    end 
end
