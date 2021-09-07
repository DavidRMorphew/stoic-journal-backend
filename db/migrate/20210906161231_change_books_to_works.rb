class ChangeBooksToWorks < ActiveRecord::Migration[6.0]
  def change
    rename_table :books, :works
  end
end