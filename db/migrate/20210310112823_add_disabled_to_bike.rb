class AddDisabledToBike < ActiveRecord::Migration[6.0]
  def change
    add_column :bikes, :disabled, :boolean
  end
end
