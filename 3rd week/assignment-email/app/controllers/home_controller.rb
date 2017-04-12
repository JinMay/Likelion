class HomeController < ApplicationController
    def index
    end

    def send_email
        @address = params[:email]
        @title = params[:title]
        @content = params[:content]
    end


end
