class AddPictureToTreatments < ActiveRecord::Migration[6.0]
  def change
    add_column :treatments, :picture, :string
  end
end
