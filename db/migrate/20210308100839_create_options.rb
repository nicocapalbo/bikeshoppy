class CreateOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :options do |t|
      t.string :name
      t.integer :price
      t.references :component, null: false, foreign_key: true

      t.timestamps
    end
  end
end
