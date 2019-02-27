# frozen_string_literal: true

class User < ApplicationRecord # :nodoc:
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessor :user, :name, :age, :email

  # validates :user, presence: true
  # validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true

  has_many :reminder, dependent: :destroy

  devise :registerable, :recoverable
end
