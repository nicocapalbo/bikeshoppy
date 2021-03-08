class CreateComponents < ActiveRecord::Migration[6.0]
  def change
    create_table :components do |t|
      t.string :name
      t.references :bike, null: false, foreign_key: true

      t.timestamps
    end
  end
end
