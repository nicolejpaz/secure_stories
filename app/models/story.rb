class Story
  require 'digest/md5'
  include Rails.application.routes.url_helpers
  include Mongoid::Document
  include Mongoid::Timestamps
  after_initialize :generate_story_id
  field :story_id, type: String
  field :name, type: String, default: "Unnamed Story"
  field :text, type: String

  private

  def generate_story_id
    all_letters_and_numbers = [*('a'..'z'), *('0'..'9')]
    sample_of_all_letters_and_numbers = all_letters_and_numbers.sample(10)
    joined_sample = sample_of_all_letters_and_numbers.join('')
    sample_hash = Digest::MD5.hexdigest(joined_sample)
    self.story_id = sample_hash.slice(0..20) if self.story_id == nil
  end
end