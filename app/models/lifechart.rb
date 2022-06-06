class Lifechart < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :birthday, presence: true
end
