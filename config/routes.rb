# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root to: 'reminders#index'
  get 'reminders/index'
  get 'reminders/new'
  get 'reminders/show'
  get 'reminders/edit'
end
