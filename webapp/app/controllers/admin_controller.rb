class AdminController < ApplicationController
    before_action :require_admin, except: []

    def home
      @outreach_posts = Post.where(category: 'Outreach').length
      @press_posts = Post.where(category: 'Press').length
      @users = User.all.length
      @widgets = Widget.all.length
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
      @widgets = Widget.all
    end
    def edit_widget
      @widget = Widget.find(params[:id])
    end
    def update_widget
      @widget = Widget.find(params[:id])
      if @widget.update(widget_params)
        redirect_to '/admin/widgets'
      else
        render 'edit_widget'
      end
    end

    def manage_users
      @users = User.all
    end
    def new_user
      @user = User.new
      need_admin
    end
    def create_user
      @user = User.new(user_params)
      if @user.save
        redirect_to '/admin/users'
      else
        render 'new'
      end
    end
    def edit_user
      @user = User.find(params[:id])
    end
    def update_user
      @user = User.find(params[:id])
      if @user.update(user_params)
        redirect_to '/admin/users'
      else
        render 'edit_user'
      end
    end
    def delete_user
      @user = User.find(params[:id])
      if (current_user.role > 3 && (current_user.id != @user.id))
        @user.destroy
        redirect_to '/admin/users'
      else
        redirect_to '/admin/users'
      end
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
      if current_user.role > 1
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to '/admin'
      else
        redirect_to '/admin'
      end
    end

    def manage_awards
      @awards = Award.all
    end
    def new_award
      @award = Award.new
    end
    def create_award
      @award = Award.new(award_params)
      if @award.save
        redirect_to '/admin/awards'
      else
        render 'new'
      end
    end
    def edit_award
      @award = Award.find_by(params[:id])
    end
    def update_award
      @award = Award.find(params[:id])
      if @award.update(award_params)
        redirect_to '/admin/awards'
      else
        render 'edit_award'
      end
    end

    def manage_sponsors
      @sponsors = Dir.glob("**/sponsor_images/*")
    end
    def delete_sponsor
      need_publisher
      @filename = params[:filename]
      File.delete("public/" + @filename)
      redirect_to '/admin/sponsors'
    end
    def new_sponsor
      uploaded_io = params[:image]
      File.open(Rails.root.join('public', 'sponsor_images', uploaded_io.original_filename), 'wb') do |file|
        file.write(uploaded_io.read)
      end
    end

    private
    def award_params
      params.require(:award).permit(:title, :event)
    end
    def post_params
      params.require(:post).permit(:title, :youtube_url, :content, :category, :image)
    end
  	def post_update_params
    	params.require(:post).permit(:title, :youtube_url, :content, :image)
  	end
    def user_params
      params.require(:user).permit(:name, :email, :password, :role, :username)
    end
    def widget_params
      params.require(:widget).permit(:content)
    end
end
