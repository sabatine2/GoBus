class AddLinhaIdToOnibus < ActiveRecord::Migration
  def change
    add_column :onibuses, :linha_id, :integer
  end
end
