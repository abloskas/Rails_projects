class TimesController < ApplicationController
    # def index
    #     # render text: "Saying Hello!"
    # render text: "what do you want me to say?"
    # end
    def main
        require 'date'
        current_time = DateTime.now
        current_time.strftime "%A, %b %d %Y %l:%M %p"
        
    end
end
