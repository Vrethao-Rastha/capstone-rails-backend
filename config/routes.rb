Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace 'v1' do
      resources :piper_news
      resources :publik_news
      resources :dc_rnews
      resources :blogs
      resources :main_story

      resources :piper_comments
      resources :publik_comments
      resources :dcr_comments
      resources :main_story_comments

      resources :users

      resources :scroller

      post '/register', to: 'users#register'
      post '/login', to: 'users#login'
      get '/test', to: 'users#test'
    end
  end
end
