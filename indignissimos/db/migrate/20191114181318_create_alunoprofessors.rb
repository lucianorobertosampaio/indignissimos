class CreateAlunoprofessors < ActiveRecord::Migration[5.0]
  def change
    create_table :alunoprofessors do |t|
      t.string :aluno_id
      t.string :professor_id

      t.timestamps
    end
  end
end
