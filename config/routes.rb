# frozen_string_literal: true

require 'sidekiq/web'

Rails.application.routes.draw do
  authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  resources :tweets, except: [:edit, :update] do
    member do
      post :retweet
    end
  end

  resources :profiles

  devise_for :users
  root to: 'tweets#index'
end
