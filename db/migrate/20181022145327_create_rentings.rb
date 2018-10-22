class CreateRentings < ActiveRecord::Migration[5.2]
  def change
    create_table :rentings do |t|
      t.integer :item_id
      t.integer :user_id ####BORROWER
      t.integer :proposed_duration
      t.decimal :final_price, :default => nil

      t.timestamps
    end
  end
end
