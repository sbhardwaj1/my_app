class HomeController < ApplicationController
  def show
  end

  def facebook_friends
  	@graph = Koala::Facebook::API.new(params[:oauth_access_token])
  	@friends = @graph.get_connections("me", "friends")
  	if @friends.blank?
  		flash[:error] = "Currently you don't have any frinds who join your app"
  	else
  		@friends
    end
  end

end
