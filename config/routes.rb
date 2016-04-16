Rails.application.routes.draw do
  devise_for :assistants
  get '/' => 'photo_assistants#index'
  get '/photo_assistants' => 'photo_assistants#index'
  get '/photo_assistants/new' => 'photo_assistants#new'
  post '/photo_assistants' => 'photo_assistants#create'
  get '/photo_assistants/:id' => 'photo_assistants#show'
  get '/photo_assistants/:id/edit' => 'photo_assistants#edit'
  patch '/photo_assistants/:id' => 'photo_assistants#update'
  delete '/photo_assistants/:id' => 'photo_assistants#destroy'
end
