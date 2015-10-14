class Contribution < ActiveRecord::Base
  # validates :image, :presence => true
  validates :sentence, :presence => true
  belongs_to :story
  belongs_to :user

end
