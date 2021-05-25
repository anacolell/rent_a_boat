class ChangeDefaultValueToTrue < ActiveRecord::Migration[6.0]
  def change
    change_column :boats, :availability, :boolean, default: true
  end
end
