class Modulo < ApplicationRecord
    has_many :plan_modulos
    has_many :curso_modulo_tutors
end
