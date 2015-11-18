class CreateRuas < ActiveRecord::Migration
  def change
    create_table :ruas do |t|
      t.string :nome

      t.timestamps null: false
    end
  end
end
