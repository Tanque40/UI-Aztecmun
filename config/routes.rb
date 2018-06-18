Rails.application.routes.draw do
  resources :delegados
  get 'interfaz/index'
  root:to=>"interfaz#index"
  get 'interfaz/CDE', as: :cde
  get 'interfaz/UNEP', as: :unep
  get 'interfaz/CIJ', as: :cij
  get 'interfaz/NATO', as: :nato
  post 'interfaz/create', as: :presentes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
