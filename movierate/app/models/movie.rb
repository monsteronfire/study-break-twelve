class Movie < ApplicationRecord
  mount_uploader :poster, PosterUploader
  belongs_to :user
  has_many :reviews
end
