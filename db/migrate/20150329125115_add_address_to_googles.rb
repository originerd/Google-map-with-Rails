class AddAddressToGoogles < ActiveRecord::Migration
  def change
    add_column :googles, :address, :string
  end
end
