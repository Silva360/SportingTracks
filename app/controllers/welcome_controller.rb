class WelcomeController < ApplicationController

	layout false	

  def index

  	if (user_signed_in?)
  		redirect_to(:controller => 'dashboard')
  	end
  		
  end

end
