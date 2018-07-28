class AddColumnToPictures < ActiveRecord::Migration[5.1]
  def change
    add_column :pictures, :title, :string
    add_column :pictures, :content, :string
  end
end
