class CreateAlunos < ActiveRecord::Migration[5.0]
  def change
    create_table :alunos do |t|
      t.string :nome
      t.text :sobre
      t.integer :idade
      t.datetime :nascimento

      t.timestamps
    end
  end
end
