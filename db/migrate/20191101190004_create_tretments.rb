class CreateTretments < ActiveRecord::Migration[6.0]
  def change
    create_table :tretments do |t|
      t.string :title
      t.string :subtitle
      t.text :content

      t.timestamps
    end
  end
end
