class Field < ApplicationRecord
  validates :field, presence: true,
            length: { minimum: 5 }
end
