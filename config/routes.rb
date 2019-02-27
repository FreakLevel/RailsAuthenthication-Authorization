# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'home#index'
  get 'home/register', as: 'register'
  post 'login', to: 'home#login'
  get 'reminders/index'
  get 'reminders/new'
  get 'reminders/show'
  get 'reminders/edit'
end
