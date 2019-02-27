# frozen_string_literal: true

class User < ApplicationRecord # :nodoc:
  attr_accessor :user, :name, :age

  validates :user, presence: true
  validates :name, presence: true
  validates :password, presence: true

  has_many :reminder, dependent: :destroy

  devise :registerable, :recoverable
end
