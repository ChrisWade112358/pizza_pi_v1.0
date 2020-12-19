class AddFirstNameAndLastNameAndAddressAndCityAndStateAndZipAndPhoneNumberToCarts < ActiveRecord::Migration[6.0]
  def change
    add_column :carts, :first_name, :string
    add_column :carts, :last_name, :string
    add_column :carts, :address, :string
    add_column :carts, :city, :string
    add_column :carts, :state, :string
    add_column :carts, :zip, :integer
    add_column :carts, :phone_number, :string
  end
end
