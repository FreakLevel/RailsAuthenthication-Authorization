# frozen_string_literal: true

class Reminder < ApplicationRecord # :nodoc:
  validates_presence_of :title

  belongs_to :user
end
