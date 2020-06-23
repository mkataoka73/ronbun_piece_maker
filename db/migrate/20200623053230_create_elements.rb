class CreateElements < ActiveRecord::Migration[6.0]
  def change
    create_table :elements do |t|
      t.string :title
      t.text :citation
      t.string :source

      t.timestamps
    end
  end
end
