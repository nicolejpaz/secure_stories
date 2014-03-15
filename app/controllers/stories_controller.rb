class StoriesController < ApplicationController
  def new
    @story = Story.new
  end

  def create
    @story = Story.new
    @story.name = params[:name] if params[:name] != ''
    @story.save
    redirect_to stories_path(@story.story_id)
  end

  def show
    @story = Story.find_by(story_id: params[:id])
  end
end