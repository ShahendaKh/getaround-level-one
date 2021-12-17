class CreateDrivers < ActiveRecord::Migration[6.1]
  def change
    create_table :drivers do |t|
      t.string :license_image
      t.references :user, foreign_key: true
      
      t.timestamps
    end
  end
end
