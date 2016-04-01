class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    
    if not isEmployee?
      
      if not isCustomer?
      customer = Customer.new
      customer.name = user.name
      customer.email_address = user.email_address
      customer.save!
      customer.customer_id = customer.id
      customer.save!
      end
      
    end
    
    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
