class CreatePlanModulos < ActiveRecord::Migration[6.1]
  def change
    create_table :plan_modulos do |t|
      t.references :modulo, null: false, foreign_key: true
      t.references :plan_formativo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
