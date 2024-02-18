class Task < ApplicationRecord
  belongs_to :list

  validates :name, presence: true

  normalizes :name, with: -> { _1.strip }
end
