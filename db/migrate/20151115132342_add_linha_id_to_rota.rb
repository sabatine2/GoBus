class AddLinhaIdToRota < ActiveRecord::Migration
  def change
    add_column :rota, :linha_id, :integer
  end
end
