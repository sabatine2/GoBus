class CreateRuas < ActiveRecord::Migration
  def change
    create_table :ruas do |t|
      t.string :nome
      t.references :rotum, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
