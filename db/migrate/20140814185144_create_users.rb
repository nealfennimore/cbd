class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :birthday_wish
      t.timestamps
    end
  end
end
