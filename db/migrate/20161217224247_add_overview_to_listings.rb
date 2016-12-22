class AddOverviewToListings < ActiveRecord::Migration
  def change
    add_column :listings, :overview, :text
  end
end
