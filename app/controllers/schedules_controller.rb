class SchedulesController < ApplicationController
  def new
    @schedule=Schedule.new
  end
  def create
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
      Schedule.order("date").each do |s|
        if s.date < Date.today
          s.destroy
        end
      end
      redirect_to schedule_path
    else
      render :new
    end
  end
  private
    def schedule_params
      params.require(:schedule).permit(:date, :content)
    end
end