class CreateEstudiantes < ActiveRecord::Migration[6.1]
  def change
    create_table :estudiantes do |t|
      t.string :rut, limit: 15
      t.string :nombre, limit: 30
      t.string :apellido_pat, limit: 30
      t.string :apellido_mat, limit: 30
      t.string :direccion, limit: 100
      t.references :comuna, null: false, foreign_key: true
      t.references :curso, null: false, foreign_key: true

      t.timestamps
    end
  end
end
