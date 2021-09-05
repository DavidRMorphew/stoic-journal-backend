class CreateQuotes < ActiveRecord::Migration[6.0]
  def change
    create_table :quotes do |t|
      t.integer :book_id
      t.integer :author_id
      t.integer :translator_id
      t.text :body
      t.string :book_num
      t.integer :section_num

      t.timestamps
    end
  end
end
