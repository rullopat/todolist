class List < ApplicationRecord
  has_many :tasks, dependent: :destroy

  validates :name, presence: true

  normalizes :name, with: -> { _1.strip }

end
