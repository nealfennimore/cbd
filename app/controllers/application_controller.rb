class ApplicationController < ActionController::Base
  protect_from_forgery

  def age(dob)
    now = Time.now.utc.to_date
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  end
  
  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
end