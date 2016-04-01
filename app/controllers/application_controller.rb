class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    rescue ActiveRecord::RecordNotFound
  end
  
  helper_method :isEmployee?
  def isEmployee?
    if not current_user
      return false
    end
    
    if (Employee.find_by email_address: current_user.email_address) == nil
      return false
    end
    
    return true
  end
  
    helper_method :get_employees
    def get_employees
        Employee.all
    end

    helper_method :num_employees
    def num_employees
        Employee.count
    end
end
