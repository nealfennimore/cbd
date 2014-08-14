class CakeController < ApplicationController

  def age(dob)
    now = Time.now.utc.to_date
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  end

  def index
    @age = age(Time.new(1987,8,31))
  end


end
