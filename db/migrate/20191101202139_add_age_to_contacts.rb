class AddAgeToContacts < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :age, :integer
  end
end
