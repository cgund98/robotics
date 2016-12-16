class AdminController < ApplicationController
    before_action :require_admin, except: []

    def home
    end
    def manage_outreach
      @posts = Post.where(category: 'Outreach').order(created_at: :desc)
    end
    def new_outreach
      @post = Post.new
    end
    def edit_post
      @post = Post.find(params[:id])
    end
    def manage_press
      @posts = Post.where(category: 'Press').order(created_at: :desc)
    end
    def new_press
      @post = Post.new
    end
    def update_post
    @post = Post.find(params[:id])
      if @post.update(post_update_params)
        redirect_to "/admin"
      else
        render 'edit_outreach'
      end
  end
    def manage_members
    end
    def manage_widgets
    end
    def manage_users
      @users = User.all
    end
    def create_outreach
      @post = Post.new(post_params)
      if @post.save
        redirect_to '/admin/outreach'
      else
        render 'new'
      end
    end
    def create_press
      @post = Post.new(post_params)
      if @post.save
        redirect_to '/admin/press'
      else
        render 'new'
      end
    end
    def delete_post
      @post = Post.find(params[:id])
      @post.destroy
      redirect_to '/admin'
    end

    private
    def post_params
      params.require(:post).permit(:title, :content, :category, :image)
    end
  	def post_update_params
    	params.require(:post).permit(:title, :content, :image)
  	end
end
