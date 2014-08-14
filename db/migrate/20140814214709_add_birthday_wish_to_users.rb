class AddBirthdayWishToUsers < ActiveRecord::Migration
  def up
    add_column :users, :birthday_wish, :string
  end

  def down
    remove_column :users, :birthday_wish
  end
end
