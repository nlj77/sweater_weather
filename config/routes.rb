Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/forecast', to: 'weathers#index'
      get '/book-search', to: 'book_search#index'
    end
  end
end
