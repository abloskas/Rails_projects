class TestsController < ApplicationController
  def index
  end

  def users
    render json: User.all
  end

  def create
    User.create(name:params[:name])
    redirect_to '/users'
  end

  def display
    render json: User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(name:params[:name])
    redirect_to '/users'
  end

  def total
    @all = User.all.count
    render text: "You have #{@all} users in database"
  end 

  # def total
  #   increment_count
  #   set_visits
  #   render text: "You have visted this url #{@count} times"
  # end 

  # def increment_count
  #   session[:counter] ||= 0
  #   session[:counter] += 1
  # end
  
  # def set_visits
  #   @count = session[:counter]
  # end

end
