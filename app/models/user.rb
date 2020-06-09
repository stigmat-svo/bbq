class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :events, dependent: :destroy
  has_many :comments

  validates :name, presence: true, length: {maximum: 40}

  before_validation :set_name, on: :create

  private

  def set_name
    self.name = "Посетитель" if name.blank?
  end
end
