class Estudiante < ApplicationRecord
  belongs_to :comuna
  belongs_to :curso
end
