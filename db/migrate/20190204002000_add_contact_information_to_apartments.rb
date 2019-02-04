class AddContactInformationToApartments < ActiveRecord::Migration[5.2]
  def change
    add_column :apartments, :contact_information, :string
  end
end
