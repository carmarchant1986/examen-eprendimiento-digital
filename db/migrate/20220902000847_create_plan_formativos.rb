class CreatePlanFormativos < ActiveRecord::Migration[6.1]
  def change
    create_table :plan_formativos do |t|
      t.string :descripcion, limit: 50
      t.integer :duracion_horas

      t.timestamps
    end
  end
end
