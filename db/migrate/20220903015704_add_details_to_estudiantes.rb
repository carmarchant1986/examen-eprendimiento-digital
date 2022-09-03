class AddDetailsToEstudiantes < ActiveRecord::Migration[6.1]
  def change
    add_column :estudiantes, :fecha_nacimiento, :string, limit: 100
  end
end
