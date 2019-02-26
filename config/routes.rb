Rails.application.routes.draw do
  get 'home/index'
  get 'home/register'
  root to: 'home#index'
  get 'reminders/index'
  get 'reminders/new'
  get 'reminders/show'
  get 'reminders/edit'
end
