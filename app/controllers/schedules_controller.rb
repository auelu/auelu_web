class SchedulesController < ApplicationController
  def index
    Schedule.order("date").each do |s|
      if s.date < Date.today
        s.destroy
      end
    end
  end
  
  private
    def schedule_params
      params.require(:schedule).permit(:date, :content)
    end
end