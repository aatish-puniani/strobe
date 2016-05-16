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
  patch '/assistants/avatarupdate' => 'assistants#avatar_update'
  patch '/assistants/:id' => 'assistants#update'
  delete '/assistants/:id' => 'assistants#destroy'
  get '/assistants' => 'assistants#send_text_message'

  get '/photographers' => 'photographers#index'
  get '/photographers/:id' => 'photographers#show'
  get '/photographers/:id/edit' => 'photographers#edit'
  patch '/photographers/avatarupdate' => 'photographers#avatar_update'
  patch '/photographers/:id' => 'photographers#update'
  delete '/photographers/:id' => 'photographers#destroy'

  get '/jobs' => 'jobs#index'
  get '/jobs/new' => 'jobs#new'
  post '/jobs' => 'jobs#create'
  get '/jobs/:id' => 'jobs#show'
  get '/jobs/:id/edit' => 'jobs#edit'
  patch '/jobs/:id' => 'jobs#update'
  delete '/jobs/:id' => 'jobs#destroy'

  get '/avatars/:id/edit' => 'avatars#edit'
  patch '/avatars/:id' => 'avatars#update'
  delete '/avatars/:id' => 'avatars#destroy'
end
