class AddRuaIdToPonto < ActiveRecord::Migration
  def change
    add_column :pontos, :rua_id, :integer
  end
end
