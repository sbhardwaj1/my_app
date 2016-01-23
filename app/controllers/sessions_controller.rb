class SessionsController < ApplicationController
  def create
  	fb_info = env["omniauth.auth"]
    user = User.from_omniauth(fb_info)
    session[:user_id] = user.id
    redirect_to facebook_friends_path(:oauth_access_token => fb_info["credentials"]["token"])
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end