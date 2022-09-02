class CreateRegions < ActiveRecord::Migration[6.1]
  def change
    create_table :regions do |t|
      t.string :nombre, limit: 30

      t.timestamps
    end
  end
end
