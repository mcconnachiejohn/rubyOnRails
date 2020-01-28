class CreateNovels < ActiveRecord::Migration[6.0]
  def change
    create_table :novels do |t|
      t.string  :name
      t.integer :genre_id
      t.integer :author_id
      t.integer :publisher_id
      t.string :isbn
      t.float :price
      t.date :publication
      t.string :format
      t.text :description
      t.integer :pages
      t.timestamps
   #   t.references :publisher
     # belongs_to :publisher
    end
  end
end
