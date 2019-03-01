# frozen_string_literal: true

class User < ApplicationRecord # :nodoc:
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:quickbook]

  has_many :reminder, dependent: :destroy

  devise :registerable, :recoverable

  def self.from_omniauth(auth)
    byebug
    where(email: auth.info.email).first_or_create do |user|
      user.password = Devise.friendly_token[0, 20]
    end
  end
end
