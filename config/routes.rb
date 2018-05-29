Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace 'v1' do
      resources :piper_news
      resources :publik_news
      resources :headlines
      resources :dc_rnews
      resources :blogs
      resources :main_story
    end
  end
end
