class QwertyController < ApplicationController
  def index
    
  end
  def my_events
    @user = current_user
    months = {1=>"January",2 => "February", 3 => "March",4 => "April",
      5 => "May",6 => "June", 7 => "July",8 => "August",
      9 => "September",10 => "October", 11 => "November",12 => "December"}
    @month_now = Time.now.month
    
    #текущий месяц
    @month = months[@month_now]
   
    #первое число текущего месяца
    first = Date.today.beginning_of_month
    
    #последнее число месяца
    last = Date.today.end_of_month
    #с какого числа начинается неделя, в течении которой начинается месяц
    @week = first.at_beginning_of_week
   
    # не удается создать выборку за текущий месяц
    puts "first data #{first}"
    puts "last data #{last}"
    @events = current_user.events.find_all_by_date(first..last)
      
  end
end
