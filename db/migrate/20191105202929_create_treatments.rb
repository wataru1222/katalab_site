class CreateTreatments < ActiveRecord::Migration[6.0]
  def change
    create_table :treatments do |t|
      t.string :title
      t.string :subtitle
      t.text :content

      t.timestamps
    end
  end
end
