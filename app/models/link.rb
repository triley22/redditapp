class Link < ApplicationRecord
  belongs_to :user
  acts_as_votable
  has_many :comments
  validates :url, format: URI::regexp(%w(http https))
end
