class LifechartsController < ApplicationController
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
  end

  def new
    @lifechart = Lifechart.new
  end

  def create
    @lifechart = Lifechart.new(lifechart_params)
    debugger
    if @lifechart.save
      redirect_to @lifechart
    else
  
      render :new, status: :unprocessable_entity

    end
  end

  private

    def lifechart_params
      params.require(:lifechart).permit(:birthday, :body_freq, :mind_freq, :love_freq,:work_freq,:play_freq,:money_freq,:name)
    end
end
