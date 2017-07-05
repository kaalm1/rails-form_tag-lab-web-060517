Rails.application.routes.draw do
  get 'student/new', to: 'students#new', as:'new_student'
  
  resources :students, only: [:index, :create]
  get '/student/:id', to: 'students#show', as: 'student'

end
