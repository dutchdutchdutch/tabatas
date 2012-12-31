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
  
end
