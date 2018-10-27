class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def search
    @posts = Post.all
    if params[:query]           # rename [:post][:term] as [:query]
      @posts = @posts.search_by_posts(params[:query])

    else
      @posts = @posts
    end
  end

  def ajax_search
      @posts = Post.all
      @posts = Post.search_by_posts(params["query"]).pluck(:caption).uniq
      respond_to do |format|    #collect data and save as string
      format.json {render json: @posts}
      format.js
    end
  end

  def new
  end

  def create
    @post = Post.new(post_params)

    @post.user_id = current_user.id

    if @post.save
      redirect_to posts_path
    else
      flash[:error] = @post.errors
      redirect_to new_post_path
    end
  end

  def show
    @post = Post.find(params[:id])
    render 'posts/show'
  end

  def random
  end

  # def destroy
  #   @post = Post.find(params[:id])
  #   @post.destroy
  #
  #   redirect_to posts_path
  # end

  private

  def post_params
    params.require(:post).permit(:caption, :user_id, :photo)
  end
end
