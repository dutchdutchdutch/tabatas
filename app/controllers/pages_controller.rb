class PagesController < ApplicationController
  
  
  
  
  
  def index
      
    @today = Time.now.to_s(:dateheader) 
      
    render('pages/index')
    
    # @tabatas = Exercise.find_by(:today)
     
  end
      
  
 
  
  def text_helpers
  end
  
  def escape_output
  end
  
end