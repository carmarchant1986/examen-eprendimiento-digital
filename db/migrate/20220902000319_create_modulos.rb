class CreateModulos < ActiveRecord::Migration[6.1]
  def change
    create_table :modulos do |t|
      t.string :descripcion, limit: 100
      t.integer :duracion_horas

      t.timestamps
    end
  end
end
