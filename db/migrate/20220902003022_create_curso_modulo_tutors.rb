class CreateCursoModuloTutors < ActiveRecord::Migration[6.1]
  def change
    create_table :curso_modulo_tutors do |t|
      t.references :modulo, null: false, foreign_key: true
      t.references :tutor, null: false, foreign_key: true
      t.references :curso, null: false, foreign_key: true

      t.timestamps
    end
  end
end
