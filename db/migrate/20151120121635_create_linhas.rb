class CreateLinhas < ActiveRecord::Migration
  def change
    create_table :linhas do |t|
      t.integer :numero
      t.string :descricao

      t.timestamps null: false
    end
  end
end
