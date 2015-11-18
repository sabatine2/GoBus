class CreateOnibuses < ActiveRecord::Migration
  def change
    create_table :onibuses do |t|
      t.string :placa
      t.boolean :ativo

      t.timestamps null: false
    end
  end
end
