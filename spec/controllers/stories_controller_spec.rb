require "spec_helper"

describe StoriesController do
  describe "GET new" do
    it "assigns @story to a new Story" do
      get :new
      expect(assigns(:story).is_a?(Story)).to eq(true)
    end
  end

  describe "POST create" do
    it "creates a new Story object" do
      count = Story.all.count
      post :create, attributes_for(:story)
      expect(Story.all.count).to eq(count + 1)
    end

    it "generates a story_id" do
      post :create, attributes_for(:story)
      expect(Story.last.story_id).to_not be_nil
    end

    it "assigns a default name if none is given" do
      post :create, attributes_for(:story, name: '')
      expect(Story.last.name).to eq "Unnamed Story"
    end
  end

  describe "GET show" do
    before(:all) do
      @story = create(:story)
    end

    it "assigns @story to the Story with the given story_id" do
      get :show, id: @story.story_id
      expect(assigns(:story)).to eq(@story)
    end
  end
end