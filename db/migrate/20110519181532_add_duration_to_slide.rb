class AddDurationToSlide < ActiveRecord::Migration
  def self.up
    add_column :slides, :duration, :integer, :default => 30 
  end

  def self.down
    remove_column :slides, :duration 
  end
end
