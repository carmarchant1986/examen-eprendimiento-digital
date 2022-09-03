Rails.application.routes.draw do
  resources :plan_modulos
  resources :curso_modulo_tutors
  resources :estudiantes
  resources :cursos
  resources :tutors
  resources :comunas
  resources :regions
  resources :plan_formativos
  resources :modulos
  root "estudiantes#curso12"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/cursos", to: "cursos#index", as: "cursos_index"
  get "/curso12", to: "estudiantes#curso12", as: "estudiantes_curso12"
  get "/modulos", to: "modulos#index", as: "modulos_index"
  get "/plan_modulo", to: "plan_modulos#index", as: "plan_modulo_index"
  get "/buscar_region_curso", to: "regions#buscar_region_curso", as: "buscar_region_curso"
  get "/resultado", to: "regions#resultado", as: "resultado_region"
end
