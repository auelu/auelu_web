class StaticPagesController < ApplicationController
  def home
    @user = User.last || User.new(created_at:'2000-01-01')
    @schedule = Schedule.last || User.new(created_at:'2000-01-01')
    @result = GameResult.last || User.new(created_at:'2000-01-01')
    if @user.created_at>Date.today
      updatenewcontent('選手情報');
    end
    if @schedule.created_at>Date.today
      updatenewcontent('予定');
    end
    if @result.created_at>Date.today
      updatenewcontent('試合結果');
    end
    if Information.all.size>10
      Information.first.destroy
    end
  end
  def introduction
  end
  def schedule
  end
  def contact
  end
  def updatenewcontent(content)
    information=Information.new(date: Date.today, newcontent: content+"を更新しました").save
  end
end
