class QwertyController < ApplicationController
  def index
    
  end
  def my_events
    @user = current_user
    months = {1=>"January",2 => "February", 3 => "March",4 => "April",
      5 => "May",6 => "June", 7 => "July",8 => "August",
      9 => "September",10 => "October", 11 => "November",12 => "December"}
    month_now = Time.now.month
    @month = months[month_now]
    first = Date.today.beginning_of_month
    last = Date.today.end_of_month
    @events = current_user.events.where("date >= #{first} and date <=#{last}")
    
   
  end
end
