class UsersController < ApplicationController
  def index
  end

  def result
  end

  def form
    [:name, :location, :language, :comments].each do |x|
      session[x] = params[x]
    end
    if session[:count].nil?
      session[:count] = 0
    end 
  session[:count] += 1
  flash[:success] = "Thanks! This form has been submitted #{session[:count]} times."
  redirect_to "/result"
  end
end
