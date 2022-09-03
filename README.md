# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

# IMPORTANTE

Modifique la base de datos en relación a la del ejercicio. Los datos incertados fueron modificados en consecuencia y estan guardados en el archivo base_modificada.sql que se encuentra en la carpeta principal.

Estas son los rutas usadas:
 * get "/cursos", to: "cursos#index", as: "cursos_index"
 * get "/curso12", to: "estudiantes#curso12", as: "estudiantes_curso12"
 * get "/modulos", to: "modulos#index", as: "modulos_index"
 * get "/plan_modulo", to: "plan_modulos#index", as: "plan_modulo_index"
 * get "/buscar_region_curso", to: "regions#buscar_region_curso", as: "buscar_region_curso"
 * get "/resultado", to: "regions#resultado", as: "resultado_region"

 * En estudiantes_controller.rb se creo el siguiente metodo de controlador
  `{  def calcular_edad  }`
  `{  @estudiante = Estudiante.find(params[:id]) }`
  `{ @edad = Date.today.strftime('%F').to_i - @estudiante.fecha_nacimiento.to_date.strftime('%F').to_i }`
  `{ strftime('%F').to_i}`
  `{ end }` 
* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# Hecho por Carlos Marchant Sánchez