Rails.application.routes.draw do
  devise_for :photographers
  devise_for :assistants
  get '/' => 'strobes#home'
  
  get '/assistants' => 'assistants#index'
  # get '/assistants/new' => 'assistants#new'
  # post '/assistants' => 'assistants#create'
  get '/assistants/:id' => 'assistants#show'
  get '/assistants/:id/edit' => 'assistants#edit'
  patch '/assistants/:id' => 'assistants#update'
  delete '/assistants/:id' => 'assistants#destroy'

  get '/photographers' => 'photographers#index'
  get '/photographers/:id' => 'photographers#show'
  get '/photographers/:id/edit' => 'photographers#edit'
  patch '/photographers/:id' => 'photographers#update'
  delete '/photographers/:id' => 'photographers#destroy'
end
