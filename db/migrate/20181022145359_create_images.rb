class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.integer :item_id
      t.string :url
      t.timestamps
    end
  end
end
