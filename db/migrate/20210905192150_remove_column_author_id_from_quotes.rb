class RemoveColumnAuthorIdFromQuotes < ActiveRecord::Migration[6.0]
  def change
    remove_column :quotes, :author_id, :integer
  end
end
