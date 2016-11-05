class Project < ActiveRecord::Base
  has_many :project_uploads, dependent: :destroy
  belongs_to :pattern
  belongs_to :user
end
