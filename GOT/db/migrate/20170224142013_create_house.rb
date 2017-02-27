class CreateHouse < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :words
      t.string :sigil_url
      t.string :seat
    end
  end
end
