class StoriesController < ApplicationController
  def index
    @stories = Story.all
    @story = Story.new
    @sentences = @story.contributions.all
  end

  def new
    @story = Story.new
  end

  def show
    @story = Story.find(params[:id])
  end

  def create
    @story = Story.new(story_params)
    if @story.save
      flash[:notice] = "Story added!"
      redirect_to stories_path
    else
      render :index
    end
  end


  private
  def story_params
    params.require(:story).permit(:title)
  end
end
