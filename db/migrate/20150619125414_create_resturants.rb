class CreateResturants < ActiveRecord::Migration
  def change
    create_table :resturants do |t|
      t.string :name
      t.string :location
    end
  end
end
