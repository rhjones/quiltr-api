class Pattern < ActiveRecord::Base
  has_one :pattern_upload, dependent: :destroy
  has_many :projects, dependent: :destroy
end
