class Pattern < ActiveRecord::Base
  has_one :pattern_upload, dependent: :destroy
end
