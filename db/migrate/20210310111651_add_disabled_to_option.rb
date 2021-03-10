class AddDisabledToOption < ActiveRecord::Migration[6.0]
  def change
    add_column :options, :disabled, :boolean
  end
end
