class AddIsbnToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :isbn, :integer, precision: 10
  end
end
