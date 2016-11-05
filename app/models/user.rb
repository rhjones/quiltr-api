class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_many :projects, dependent: :destroy
  has_many :project_uploads, through: :projects
  has_many :patterns, through: :favorites
  has_many :favorites, dependent: :destroy
end
