class Curso < ApplicationRecord
  belongs_to :comuna
  belongs_to :plan_formativo
  has_many :curso_modulo_tutors
  has_many :estudiantes
  
end
