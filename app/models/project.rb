class Project < ActiveRecord::Base
  has_many :project_uploads, dependent: :destroy
end
