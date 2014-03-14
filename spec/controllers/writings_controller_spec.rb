require "spec_helper"

describe WritingsController do
  describe "GET new" do
    it "assigns @story to a new writing" do
      get :new
      expect(assigns(:story).is_a?(Writing)).to eq(true)
    end
  end

  describe "POST create" do
    it "creates a new writing object" do
      count = Writing.all.count
      post :create, attributes_for(:writing)
      expect(Writing.all.count).to eq(count + 1)
    end

    it "generates a story_id" do
      post :create, attributes_for(:writing)
      expect(Writing.last.story_id).to_not be_nil
    end
  end

  describe "GET show" do
    before(:each) do
      @story = create(:writing)
    end

    it "assigns @story to the writing with the given story_id" do
      get :show, id: @story.story_id

      expect(assigns(:story)).to eq(@story)
    end
  end
end