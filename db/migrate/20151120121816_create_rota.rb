class CreateRota < ActiveRecord::Migration
  def change
    create_table :rota do |t|
      t.string :destino
      t.string :origem
      t.references :linha, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
