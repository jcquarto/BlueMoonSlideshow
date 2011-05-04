class AddBodyToSlides < ActiveRecord::Migration
  def self.up
    add_column :slides, :body, :text 
  end

  def self.down
    remove_column :slides, :body
  end
end
