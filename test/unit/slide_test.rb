require 'test_helper'

class SlideTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
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

