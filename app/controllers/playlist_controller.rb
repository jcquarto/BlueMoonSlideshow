class PlaylistController < ApplicationController
  
  def update (list)
    old_playlist = current_playlist
    session[:playlist] = list # could probably write a setter for this and put it in the application_controller with other stuff
  end
  
  def next
  end
  
  
end
