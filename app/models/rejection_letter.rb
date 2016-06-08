class RejectionLetter < ActiveRecord::Base
  # require either a rejection letter message or image
  validates_presence_of :text, if: lambda { |rl| rl.image_url.nil? }
  validates_presence_of :image_url, if: lambda { |rl| rl.text.nil? }

  validates :notes, length: { maximum: 1000 }
end
