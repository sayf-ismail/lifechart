class LifechartsController < ApplicationController
  include LifechartsHelper

  def index
    @lifecharts = Lifechart.all
  end

  def show
    @lifechart = Lifechart.find(params[:id])
    birthday = @lifechart.birthday
    current_date = Date.today()
    @age_in_weeks = ((current_date - birthday))/7
    years = 90
    weeks_per_year = 52 
    @total_weeks = years*weeks_per_year 

    # how many images per line
    @size_before = (10 / @lifechart.weekly_freq_before).to_s
    @size_after = (10 / @lifechart.weekly_freq_after).to_s
  end

  def new
    @lifechart = Lifechart.new
  end

  def create
    @lifechart = Lifechart.new(lifechart_params)
    @lifechart = assign_lifechart_creator(@lifechart, current_user)

    if @lifechart.save
      redirect_to @lifechart
    else
  
      render :new, status: :unprocessable_entity

    end
  end

  private

    def lifechart_params
      params.require(:lifechart).permit(:birthday, :activity, :weekly_freq_before, :weekly_freq_after, :name)
    end
end
