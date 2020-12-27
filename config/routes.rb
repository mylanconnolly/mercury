# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :rooms do
    resources :messages, only: %i[new create]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
