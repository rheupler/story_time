class StoriesController < ApplicationController
  def index
    @stories = Story.all
    @story = Story.new
    @sentences = @story.contributions.all

  end

  def new
    @story = Story.new
  end

  def destroy
    @story = Story.find(params[:id])
    @story.destroy
    redirect_to stories_path
  end

  def show
    @story = Story.find(params[:id])
    @contribution = Contribution.new
    @author = User.find(@story.user_id).username

  end

  def create
    @story = Story.new(story_params)
    @story.user_id=current_user.id if current_user
    if @story.save
      flash[:notice] = "Story added!"
      redirect_to stories_path
    else
      render :index
    end
  end

  def edit
    @story = Story.find(params[:id])
  end

  def update
    @story = Story.find(params[:id])
    if @story.update(story_params)
      redirect_to story_path
    else
      render :edit
    end
  end


  private
  def story_params
    params.require(:story).permit(:title)
  end
end
