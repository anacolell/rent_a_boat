class AddDefaultValueToAvailability < ActiveRecord::Migration[6.0]
  def change
    rename_column :boats, :availabilty, :availability
  end
end
