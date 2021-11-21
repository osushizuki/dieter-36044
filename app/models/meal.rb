class Meal < ApplicationRecord
  with_options presence: true do
    validates :calorie
    validates :explanation
  end

  belongs_to :user
end
