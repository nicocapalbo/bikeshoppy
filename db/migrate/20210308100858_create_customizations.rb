class CreateCustomizations < ActiveRecord::Migration[6.0]
  def change
    create_table :customizations do |t|
      t.references :order, null: false, foreign_key: true
      t.references :option, null: false, foreign_key: true

      t.timestamps
    end
  end
end
