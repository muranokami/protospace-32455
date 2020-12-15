class Comment < ApplicationRecord
  validates :text presence: true
  validates :user presence: true
  validates :prototype presence: true
  belongs_to :user
  has_many :prototypes
end
