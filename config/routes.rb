Rails.application.routes.draw do

  get '/resumes', to:'resumes#index'
  get '/resumes/new', to:'resumes#new'
  post '/resumes', to: 'resumes#create'
  get '/resumes/:id', to: 'resumes#show', as: 'resume'
  delete '/resumes/:id', to: 'resumes#destroy'
  get '/resumes/:id/edit', to: 'resumes#edit', as: "edit_resume"
  patch 'resumes/:id', to: "resumes#update"
  # post '/'. to: 'pages#index'

  get "/users/sign_up", to: "users#new"

  root 'resumes#index'
  
end
