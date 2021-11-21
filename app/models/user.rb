class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  extend ActiveHash::Associations::ActiveRecordExtensions
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  with_options presence: true do
    validates :nick_name
    validates :password
    validates :weight
    validates :height
    validates :age
    validates :habit_id
  end

  has_many :users
  belongs_to :habit
end
