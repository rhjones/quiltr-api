class Favorite < ActiveRecord::Base
  belongs_to :user, inverse_of: :favorites
  belongs_to :pattern, inverse_of: :favorites
  validates :user, :pattern, presence: true
  validates :pattern, uniqueness: { scope: :user}
end
