class Contribution < ActiveRecord::Base
  validates :image, :presence => true
  validates :sentence, :presence => true
  belongs_to :stories
  belongs_to :users
end
