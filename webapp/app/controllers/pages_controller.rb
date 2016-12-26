class PagesController < ApplicationController
  def first
  end
  def press
    @posts = Post.where(category: 'Press').order(created_at: :desc)
  end
  def outreach
    @posts = Post.where(category: 'Outreach').order(created_at: :desc)
  end
  def viewpress
  end
  def calendar
  end
  def newpost
    @post = Post.new
  end
  def createpost
    @post = Post.new(post_params)
    if @message.save
      redirect_to '/press'
    else
      render 'newpost'
    end
  end
  def show
    @post = Post.find_by(title: params[:title])
    @recent_posts = Post.order(created_at: :desc).limit(3).all
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :category)
  end
end
