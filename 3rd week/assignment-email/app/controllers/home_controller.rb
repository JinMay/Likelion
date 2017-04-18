class HomeController < ApplicationController
    require 'mailgun'


    def index
    end

    def send_email
        @address = params[:email]
        @title = params[:title]
        @content = params[:content]

        # mailgun 실습
        # mg_client = Mailgun::Client.new("key-3998c6a69fe49ddee7bf1164ede37d22")
        #
        # message_params =  {
        #                    from: 'bob@example.com',
        #                    to:   @address,
        #                    subject: @title,
        #                    text:    @content,
        #                   }
        #
        # result = mg_client.send_message('sandboxab4552677a154ae0a8e56d5eb76011f2.mailgun.org', message_params).to_h!
        #
        # message_id = result['id']
        # message = result['message']

        @new_post = Post.new
        @new_post.title = @title
        @new_post.address = @address
        @new_post.content = @content
        @new_post.save

        redirect_to list_path
    end


    def list
        @all_post = Post.all.order('id desc')
    end


    def delete
        @post = Post.find(params[:id])
        @post.destroy

        redirect_to list_path
    end


    def edit
        @post = Post.find(params[:id])
    end


    def update
        @post = Post.find(params[:id])
        # @post.update(params.require(:post).permit(:title, :address, :content))

        @post.title = params[:title]
        @post.address = params[:address]
        @post.content = params[:content]
        @post.save

        redirect_to '/list'

    end

end
