# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  root to: 'reminders#index'
  get 'reminders/index'
  get 'reminders/new', as: 'reminders_new'
  post 'reminders/create', to: 'reminders#create', as: 'reminders_create'
  get 'reminders/show'
  get 'reminders/edit'
  delete 'reminders/:id', to: 'reminders#delete', as: 'reminders_delete'
end
