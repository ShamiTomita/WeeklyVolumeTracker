class Week < ApplicationRecord
    has_many :days
    has_many :workouts, through: :days 

    validates :range, uniqueness: true 
end
