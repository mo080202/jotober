class AddAddressToJot < ActiveRecord::Migration
  def change
    add_column :jots, :address, :string
  end
end
