class Exercise < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  with_options presence: true do
    validates :menu_id, numericality: { other_than: 1 , message: "can't be blank"}
    validates :time, format: {with: /\A[0-9]+\z/}
  end

  belongs_to :user
  belongs_to :menu
end
