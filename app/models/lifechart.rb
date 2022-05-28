class Lifechart < ApplicationRecord
  validates :name, presence: true
  validates :birthday, presence: true
end
