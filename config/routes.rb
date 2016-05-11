Rails.application.routes.draw do
  devise_for :photographers, :controllers => {:registrations => "registrations"}
  devise_for :assistants, :controllers => {:registrations => "registrations"}
  get '/' => 'strobes#home'
  get '/sign_up' => 'strobes#sign_up'
  get '/login' => 'strobes#login'
  get '/about' => 'strobes#about'

  get '/assistants' => 'assistants#index'
  get '/assistants/:id' => 'assistants#show'
  get '/assistants/:id/edit' => 'assistants#edit'
  patch '/assistants/:id' => 'assistants#update'
  delete '/assistants/:id' => 'assistants#destroy'

  get '/photographers' => 'photographers#index'
  get '/photographers/:id' => 'photographers#show'
  get '/photographers/:id/edit' => 'photographers#edit'
  patch '/photographers/:id' => 'photographers#update'
  delete '/photographers/:id' => 'photographers#destroy'
  get '/photographers/:id/avatar_edit' => 'photographers#avatar_edit'
  patch '/photographers/:id' => 'photographers#avatar_update'
end
