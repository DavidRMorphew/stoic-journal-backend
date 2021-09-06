class RenameBookIdToWorkIdInQuotes < ActiveRecord::Migration[6.0]
  def change
    rename_column :quotes, :book_id, :work_id
  end
end
