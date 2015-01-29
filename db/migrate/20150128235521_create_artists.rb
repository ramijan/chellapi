class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.datetime :performing_at
      t.string :genre
      t.references :stage, index: true

      t.timestamps null: false
    end
    add_foreign_key :artists, :stages
  end
end
