class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      #Add each attribute
      t.string :title
      t.string :author
      t.Numerical :price
      t.Date :published

      t.timestamps
    end
  end
end
