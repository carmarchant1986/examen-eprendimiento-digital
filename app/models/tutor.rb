class Tutor < ApplicationRecord
  belongs_to :comuna
  has_many :curso_modulo_tutors
end
