class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :item_id
      t.integer :price
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
