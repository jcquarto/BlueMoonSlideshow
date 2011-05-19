class PlaylistController < ApplicationController
  
  def update 
    old_playlist = current_playlist
    session[:playlist] = params[:playlist] # could probably write a setter for this and put it in the application_controller with other stuff
    respond_to do |format|
      format.html { render :layout => false }
    end
  end
  
  def next
    if session[:slide_id].nil? || session[:playlist].index(session[:slide_id]).nil? || session[:playlist].index(session[:slide_id]) == session[:playlist].length-1
      session[:slide_id] = session[:playlist].first
    else 
      current = session[:playlist].index(session[:slide_id])
      session[:slide_id] = session[:playlist][current+1]
    end
    respond_to do |format|
      format.html { render :layout => false}
    end
  end
  
  
end
