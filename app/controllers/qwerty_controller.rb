class QwertyController < ApplicationController
  def index
    
  end
  def my_events
    @user = current_user#User.find(params[:id])
    @events2 = current_user.events
    months = {1=>"January",2 => "February", 3 => "March",4 => "April",
      5 => "May",6 => "June", 7 => "July",8 => "August",
      9 => "September",10 => "October", 11 => "November",12 => "December"}
    month_now = Time.now.month
    @month = months[month_now]
    
    
   
  end
end
