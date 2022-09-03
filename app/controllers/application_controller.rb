class ApplicationController < ActionController::Base
    @regions = Region.all
    @cursos = Curso.all
end
