class WelcomeController < ApplicationController
  def index
  	if sign_in?
  		puts "hello"
  	end
  end
end
