Rails.application.routes.draw do
  resources :alunoprofessors
  resources :escolas
  resources :professores
  resources :alunos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
