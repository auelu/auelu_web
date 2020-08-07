class SchedulesController < ApplicationController
  def new
    @schedule=Schedule.new
  end
  def create
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
      redirect_to root_url
    else
      render :new
    end
  end
  private
    def schedule_params
      params.require(:schedule).permit(:date, :content)
    end
end