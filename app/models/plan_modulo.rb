class PlanModulo < ApplicationRecord
  belongs_to :modulo
  belongs_to :plan_formativo
end
