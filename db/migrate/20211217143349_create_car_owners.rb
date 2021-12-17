class CreateCarOwners < ActiveRecord::Migration[6.1]
  def change
    create_table :car_owners do |t|

      t.timestamps
    end
  end
end
