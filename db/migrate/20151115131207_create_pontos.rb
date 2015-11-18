class CreatePontos < ActiveRecord::Migration
  def change
    create_table :pontos do |t|
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
