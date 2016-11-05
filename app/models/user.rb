class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_and_belongs_to_many :patterns
  has_many :projects, dependent: :destroy
end
