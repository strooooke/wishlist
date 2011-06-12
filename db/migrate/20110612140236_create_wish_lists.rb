class CreateWishLists < ActiveRecord::Migration
  def self.up
    create_table(:wish_lists, :id => false) do |t|
      t.string :uuid, :limit => 36, :primary => true
      t.string :title
      t.text :description
      t.string :event_place
      t.string :creator_name
      t.date :event_date

      t.timestamps
    end
  end

  def self.down
    drop_table :wish_lists
  end
end
