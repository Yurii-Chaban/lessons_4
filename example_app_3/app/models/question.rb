class field < ApplicationRecord
  validates :field_categorye, presence: true,
            length: { minimum: 5 }
  validates :field, presence: true,
            length: { minimum: 5 }
  validates :answer, presence: true,
            length: { minimum: 5 }
end
