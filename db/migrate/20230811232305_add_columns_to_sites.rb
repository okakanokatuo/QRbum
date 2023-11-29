class AddColumnsToSites < ActiveRecord::Migration[6.1]
  def change
    add_column :sites, :imgurl, :string
  end
end
