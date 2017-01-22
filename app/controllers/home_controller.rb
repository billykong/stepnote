class HomeController < ApplicationController
  def index
  	if user_signed_in?
  		redirect_to itineraries_path
  	else 
  		render
  	end
  end
end
