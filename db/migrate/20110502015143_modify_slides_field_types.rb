class ModifySlidesFieldTypes < ActiveRecord::Migration
  def self.up
    change_column :slides, :header, :string
    change_column :slides, :title, :string
    change_column :slides, :subtitle, :string
    change_column :slides, :footer, :string
  end

  def self.down
    change_column :slides, :header, :text
    change_column :slides, :title, :text
    change_column :slides, :subtitle, :text
    change_column :slides, :footer, :text
  end
end
