class Slide < ActiveRecord::Base
  before_save :update_last_touched, :check_duration
  
  validates_numericality_of :duration, :only_integer => true
  validates_inclusion_of :duration, :in => 0..999
  
  
  def update_last_touched
    # gets updated on instance creation of whenever the slide is moved on or off the playlist
    self.last_touched = DateTime.now
  end
  
  def check_duration
    # if no durations is specified, it sets it to 20 (seconds)
    self.duration = 20 if self.nil?
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

