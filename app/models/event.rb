class Event < ApplicationRecord
  belongs_to :user, optional: true

  has_many :comments, -> { sorted }, dependent: :destroy
  has_many :subscriptions, dependent: :destroy
  has_many :subscribers, through: :subscriptions, source: :user
  has_many :photos, dependent: :destroy

  validates :user, presence: true

  validates :title, presence: true,
            length: {maximum: 255}
  validates :address, presence: true
  validates :datetime, presence: true

  def visitors
    (subscribers + [user]).uniq
  end
end
