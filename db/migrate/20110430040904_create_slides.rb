class CreateSlides < ActiveRecord::Migration
  def self.up
    create_table :slides do |t|
      t.text :header
      t.text :title
      t.text :subtitle
      t.text :footer
      t.datetime :last_touched

      t.timestamps
    end
  end

  def self.down
    drop_table :slides
  end
end
