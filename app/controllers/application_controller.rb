class ApplicationController < ActionController::Base
  protect_from_forgery
    
  def pages
    render('pages/index') 
    # redirect_to(:action => 'other_hello')
  end
  
  def index
    render('pages/index') 
    # redirect_to(:action => 'other_hello')
  end

  helper_method :current_user

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  
end
