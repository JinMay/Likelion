class PostsController < ApplicationController
    def index
        @all_post = Post.all
    end


    def new
        @post = Post.new
    end

    def edit
        @post = Post.find(params[:id])
    end


    def show
        @post = Post.find(params[:id])
    end


    def create
        @post = Post.new(post_params)

        if @post.save
            redirect_to @post
        else
            render 'new'
        end

    end

    def update
        @post = Post.find(params[:id])

        if @post.update(post_params)
            redirect_to 'show'
        else
            render 'edit'
        end
    end


    def destroy
        @post = Post.find(params[:id])

        @post.destroy
        redirect_to posts_path
    end


    private
        def post_params
            params.require(:post).permit(:title, :content)
        end




end
