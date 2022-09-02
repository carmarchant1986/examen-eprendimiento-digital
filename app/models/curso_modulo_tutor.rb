class CursoModuloTutor < ApplicationRecord
  belongs_to :modulo
  belongs_to :tutor
  belongs_to :curso
end
