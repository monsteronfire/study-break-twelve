class Recipe < ApplicationRecord
  belongs_to :user
  has_many :ingredients
  has_many :directions
  accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :directions, reject_if: :all_blank, allow_destroy: true
  mount_uploader :picture, PictureUploader
  validates :title, :description, :image, presence: true
end
