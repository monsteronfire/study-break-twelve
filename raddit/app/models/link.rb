class Link < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  acts_as_votable
  belongs_to :user
  has_many :comments, dependent: :destroy
end
