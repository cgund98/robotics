class PagesController < ApplicationController
  def first
  end
  def press
  end
  def outreach
  end
  def viewpress
    
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
  
  private 
  def post_params
    params.require(:post).permit(:title, :content, :category)
  end
end
