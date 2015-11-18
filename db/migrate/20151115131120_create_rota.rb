class CreateRota < ActiveRecord::Migration
  def change
    create_table :rota do |t|
      t.string :destino
      t.string :origem

      t.timestamps null: false
    end
  end
end
