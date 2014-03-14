class WritingsController < ApplicationController
  def new
    @story = Writing.new
  end

  def create
    @story = Writing.new
    @story.name = params[:name] if params[:name] != ''
    @story.save
    redirect_to writing_path(@story.story_id)
  end

  def show
    @story = Writing.find_by(story_id: params[:id])
  end
end