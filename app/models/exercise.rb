class Exercise < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  with_options presence: true do
    validates :menu_id
    validates :time
  end

  belongs_to :user
  belongs_to :menu

end
