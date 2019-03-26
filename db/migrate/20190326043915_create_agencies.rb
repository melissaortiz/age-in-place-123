class CreateAgencies < ActiveRecord::Migration[5.2]
  def change
    create_table :agencies do |t|
      t.string :name 
      t.string :street
      t.string :city
      t.string :state 
      t.string :phone 

      t.timestamps
    end
  end
end
