class AddRatingToAgencies < ActiveRecord::Migration[5.2]
  def change
    add_column :agencies, :rating, :integer
  end
end
