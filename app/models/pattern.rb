class Pattern < ActiveRecord::Base
  has_many :users, through: :favorites
  # may not need dependent: :destroy if pattern destroy is removed?
  has_many :favorites, dependent: :destroy
  has_one :pattern_upload, dependent: :destroy
  has_many :projects, dependent: :destroy
end
