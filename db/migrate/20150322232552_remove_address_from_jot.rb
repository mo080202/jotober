class RemoveAddressFromJot < ActiveRecord::Migration
  def change
    remove_column :jots, :address, :string
  end
end
