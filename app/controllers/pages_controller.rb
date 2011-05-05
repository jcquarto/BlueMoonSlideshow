class PagesController < ApplicationController
  def controlpanel
    @playlist = current_playlist
    all_slides = Slide.order('last_touched DESC')    
    @playlist_slides = Slide.where( ['id in (?)', current_playlist] )
    @slides = all_slides - @playlist_slides
    render :layout => "controlpanel"
  end

  def slideshow
    render :layout => "slideshow"
  end
  
end
