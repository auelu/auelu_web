class StaticPagesController < ApplicationController
  def home
    @user = User.first || User.new(created_at:'2000-01-01')
    @schedule = Schedule.first || User.new(created_at:'2000-01-01')
    @result = GameResult.first || User.new(created_at:'2000-01-01')
    if @user.created_at>Date.today-1
      updatenewcontent('ユーザー情報');
    end
    if @schedule.created_at>Date.today-1
      updatenewcontent('試合情報');
    end
    if @result.created_at>Date.today-1
      updatenewcontent('試合結果');
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
