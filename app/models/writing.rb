class Writing
  include Rails.application.routes.url_helpers
  include Mongoid::Document
  include Mongoid::Timestamps
  field :story_id, type: String
  field :name, type: String, default: "Unnamed Story"
  field :text, type: String
  validates_presence_of :story_id
end