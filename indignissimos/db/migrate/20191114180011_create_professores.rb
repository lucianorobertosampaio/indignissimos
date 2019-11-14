class CreateProfessores < ActiveRecord::Migration[5.0]
  def change
    create_table :professores do |t|
      t.string :nome
      t.text :sobre
      t.integer :idade
      t.decimal :salario

      t.timestamps
    end
  end
end
