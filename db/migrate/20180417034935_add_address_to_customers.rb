class AddAddressToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :address, :string
    add_column :customers, :city, :string
    add_column :customers, :state, :string
    add_column :customers, :country, :string
  end
end
