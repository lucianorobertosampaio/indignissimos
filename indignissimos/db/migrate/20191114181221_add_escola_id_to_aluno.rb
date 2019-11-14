class AddEscolaIdToAluno < ActiveRecord::Migration[5.0]
  def change
    add_column :alunos, :escola_id, :integer
  end
end
