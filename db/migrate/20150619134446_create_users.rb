class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users  do |t|
      t.column :name,          :string  , null:    false
      t.column :email,         :string  , index:   true, null: false
      t.column :password_digest,:string
      t.column :access_token,   :string
      t.column :admin,         :boolean , default: false
    end
  end
end
