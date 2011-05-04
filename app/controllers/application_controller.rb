class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  
    def playlist      
      session[:playlist] ||= Array.new
    end
    
    def current_slide
      session[:slide_id] ||= nil
    end
end
