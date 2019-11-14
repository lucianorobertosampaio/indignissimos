class CreateEscolas < ActiveRecord::Migration[5.0]
  def change
    create_table :escolas do |t|
      t.string :nome
      t.text :sobre

      t.timestamps
    end
  end
end
