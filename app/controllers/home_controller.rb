# frozen_string_literal: true

class HomeController < ApplicationController # :nodoc:
  def index
  end

  def login
    redirect_to controller: 'reminders', action: 'index' if true # !params['user'].nil?
  end

  def register
  end

  def signup
  end

  def logout
  end
end
