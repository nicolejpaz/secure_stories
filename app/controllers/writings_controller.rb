class WritingsController < ApplicationController
  def new
    @story = Writing.new
  end
end