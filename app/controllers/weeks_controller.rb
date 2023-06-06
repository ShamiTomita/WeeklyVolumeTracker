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
        week = Week.new(range:t.all_week)
        
        if week.save
            days = t.all_week.to_a.map {|day| Day.create(day: day.strftime("%A %d"), week_id: week.id)} #each day needs to be an  actual dateobject
           redirect_to root_path, notice: "Created!"
        else 
            flash[:notice] = "Wait till next week!"
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
