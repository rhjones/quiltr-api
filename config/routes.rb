Rails.application.routes.draw do
  resources :projects, except: [:new, :edit]
  resources :project_uploads, except: [:new, :edit, :update]
  resources :patterns, except: [:new, :edit]
  resources :pattern_uploads, except: [:new, :edit, :update]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
