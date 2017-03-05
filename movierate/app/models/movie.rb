class Movie < ApplicationRecord
  mount_uploader :poster, PosterUploader
  belongs_to :user
end
