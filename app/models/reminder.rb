# frozen_string_literal: true

class Reminder < AnpplicationRecord # :nodoc:
  attr_accessor :title, :message, :datetime

  validates :title, presence: true

  belongs_to :user
end
