class CreateCursos < ActiveRecord::Migration[6.1]
  def change
    create_table :cursos do |t|
      t.date :fecha_inicio
      t.date :fecha_termino
      t.references :comuna, null: false, foreign_key: true
      t.references :plan_formativo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
