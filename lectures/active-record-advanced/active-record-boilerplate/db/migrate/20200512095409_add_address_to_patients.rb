class AddAddressToPatients < ActiveRecord::Migration[5.2]
  def change
    add_column :patients, :address, :string
  end
end
