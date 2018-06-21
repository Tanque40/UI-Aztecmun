Rails.application.routes.draw do
  resources :delegados
  get 'interfaz/index'
  root:to=>"interfaz#index"
  get 'interfaz/CDE', as: :cde
  get 'interfaz/UNEP', as: :unep
  get 'interfaz/CIJ', as: :cij
  get 'interfaz/NATO', as: :nato
  get 'interfaz/cerrar/:comite', as: :cerrar, to: "interfaz#cerrar"
  get 'interfaz/seleccionarTopico/:topico', as: :topic, to: "interfaz#seleccionarTopico"
  post 'interfaz/create', as: :presentes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
