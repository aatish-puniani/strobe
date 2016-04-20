Rails.application.routes.draw do
  devise_for :assistants
  get '/' => 'strobes#home'
  
  get '/assistants' => 'assistants#index'
  get '/assistants/new' => 'assistants#new'
  post '/assistants' => 'assistants#create'
  get '/assistants/:id' => 'assistants#show'
  get '/assistants/:id/edit' => 'assistants#edit'
  patch '/assistants/:id' => 'assistants#update'
  delete '/assistants/:id' => 'assistants#destroy'
end
