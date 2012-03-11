class TweakDefaultSlideDuration < ActiveRecord::Migration
  def self.up
    change_column :slides, :duration, :integer, :default => 20 
  end

  def self.down
    change_column :slides, :duration, :integer, :default => 30 
  end
end
