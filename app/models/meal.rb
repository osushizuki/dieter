class Meal < ApplicationRecord
  with_options presence: true do
    validates :calorie, format:{with: /\A[0-9]+\z/}
    validates :explanation
  end

  belongs_to :user
end
