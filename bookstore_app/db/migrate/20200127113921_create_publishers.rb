class CreatePublishers < ActiveRecord::Migration[6.0]
  def change
    create_table :publishers do |t|
      t.string :name
      t.string :country

      t.timestamps
     # t.references :novels
     # has_many: novels
    end
  end
end
