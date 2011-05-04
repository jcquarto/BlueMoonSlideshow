class Slide < ActiveRecord::Base
  before_save :update_last_touched
  
  def update_last_touched
    # gets updated on instance creation of whenever the slide is moved on or off the playlist
    self.last_touched = Date.now
  end
end

# == Schema Information
#
# Table name: slides
#
#  id           :integer         not null, primary key
#  header       :string(255)
#  title        :string(255)
#  subtitle     :string(255)
#  footer       :string(255)
#  last_touched :datetime
#  created_at   :datetime
#  updated_at   :datetime
#  body         :text
#

