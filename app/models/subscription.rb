class Subscription < ApplicationRecord
  belongs_to :event
  belongs_to :user, optional: true

  validates :event, presence: true

  validates :user_name, presence: true, unless: -> { user.present? }

  validates :user_email, presence: true,
            format: {with: URI::MailTo::EMAIL_REGEXP},
            uniqueness: {scope: :event_id},
            unless: -> { user.present? }

  validates :user, uniqueness: {scope: :event_id}, if: -> { user.present? }

  validate :user_organizer, if: -> { user.present? }

  validate :email_already_exists, unless: -> { user.present? }

  def user_name
    if user.present?
      user.name
    else
      super
    end
  end

  def user_email
    if user.present?
      user.email
    else
      super
    end
  end

  private

  def user_organizer
    if user.id == event.user_id
      errors.add(user_name, I18n.t('form.errors.user_organizer'))
    end
  end

  def email_already_exists
    if User.find_by(email: user_email)
      errors.add(user_email, I18n.t('form.errors.email_already_exists'))
    end
  end
end
