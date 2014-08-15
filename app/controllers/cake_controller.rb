class CakeController < ApplicationController

  def index
    @age = age(Time.new(1987,8,31))
  end

end
