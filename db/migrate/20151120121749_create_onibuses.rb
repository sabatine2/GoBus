class CreateOnibuses < ActiveRecord::Migration
  def change
    create_table :onibuses do |t|
      t.string :placa
      t.boolean :ativo
      t.references :linha, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
