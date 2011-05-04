class PagesController < ApplicationController
  def controlpanel
    render :layout => "controlpanel"
  end

  def slideshow
    render :layout => "slideshow"
  end
  
end
