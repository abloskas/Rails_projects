class TestsController < ApplicationController
  def hello
    render text: "Hello Coding Dojo!"
  end

  def say
    # render text: "Saying Hello!"
    render text: "what do you want me to say?"
  end

  def joe
    render text: "Saying hello, Joe!"
  end

  def michael
    redirect_to '/say/hello/joe'
  end

  def times 
    increment_count
    set_visits
    render text: "You have visted this url #{@count} times"
  end

  def increment_count
    session[:counter] ||= 0
    session[:counter] += 1
  end
  
  def set_visits
    @count = session[:counter]
  end

  def restart
    session.clear
    render text: "Destroyed the session"

  end

end
