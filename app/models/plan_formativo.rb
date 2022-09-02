class PlanFormativo < ApplicationRecord
    has_many :plan_modulos
    has_many :cursos
end
