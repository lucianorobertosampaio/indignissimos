class AddEscolaIdToProfessore < ActiveRecord::Migration[5.0]
  def change
    add_column :professores, :escola_id, :integer
  end
end
