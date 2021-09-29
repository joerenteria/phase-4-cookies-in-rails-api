class SessionsController < ApplicationController
  
  def index
    byebug
    session[:session_hello] ||= "Yoohoo!!!"
    cookies[:cookies_hello] ||= "Ollo!"
    render json: { session: session, cookies: cookies.to_hash }
  end

end
