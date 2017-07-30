class PostsController < ApplicationController
    before_action:set_posts,only[:show,:edit,:update,:destroy]
    def index
        @posts = Post.all
    end
    def show
        
    end
    
    def edit
        
    end
    
    def updated
        @posts.update(posts_params);
        redirect_to @post
    end
    
    def new
        @post = Post.new
    end
    
    def create
        @post = Post.new(posts_params)
        redirect_to @post
    end
    
    def destroy
        @posts.destroy
        redirect_to  posts_path
    end
    
    private 
    def posts_params
       params.require(:post).permit (:position_name)
    end
    def set_posts
        @posts = Post.find(params[:id])
    end
end
