class AddLogoUrlToResturants < ActiveRecord::Migration
  def change
    add_column :resturants, :logo_url, :string
  end
end
