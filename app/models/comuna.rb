class Comuna < ApplicationRecord
  belongs_to :region
  has_many :tutors
  has_many :cursos
  has_many :estudiantes
end
