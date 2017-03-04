class Pin < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  acts_as_votable
  belongs_to :user
end
