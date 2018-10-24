class AddProfilePictureToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :profile_picture, :string, :default => "http://static1.squarespace.com/static/59f7a47164b05ff7f0811b2e/5a04f1d8e4966b4a082805f0/5a0e525424a694cb083593b7/1513569850034/sil-VMartinez.jpg?format=1000w"
  end
end
