class ChangeCurrencyToNotAcceptNull < ActiveRecord::Migration[6.1]
  def up
    change_column :currencies, :name, :string, null: false
    change_column :currencies, :code, :string, null: false
    add_index :currencies, :code, unique: true
  end

  def down
    change_column :currencies, :name, :string, null: true
    change_column :currencies, :code, :string, null: true
    remove_index :currencies, :code
  end
end
