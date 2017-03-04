class CreateFirehouses < ActiveRecord::Migration[5.0]
  def change
    create_table :firehouses do |t|
      t.string :name
      t.string :age
      t.string :summary
      t.string :photo
      t.string :story
      t.string :goalAmount
      t.string :donationDest
      t.string :locationCounty

      t.timestamps
    end
  end
end
