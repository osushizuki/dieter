class Health < ApplicationRecord
  with_options presence: true do
    validates :every_weight
  end

  belongs_to :user
end
