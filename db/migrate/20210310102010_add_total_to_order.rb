class AddTotalToOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :total, :integer
  end
end
