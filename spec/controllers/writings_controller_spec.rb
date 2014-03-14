require "spec_helper"

describe WritingsController do
  describe "GET new" do
    it "assigns @story to a new writing" do
      get :new
      expect(assigns(:story).is_a?(Writing)).to eq(true)
    end
  end
end