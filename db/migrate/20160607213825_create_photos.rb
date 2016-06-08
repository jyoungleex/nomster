class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.text :caption

      t.integer :user_id
      t.integer :place_id
      t.timestamps null: false
    end

    add_index :photos, [:user_id, :place_id] #Lookups by both ids
    add_index :photos, :place_id #Lookup by place id
  end
end
