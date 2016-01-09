require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "star reader" do 

  comment = Comment.new(:rating => '1_star').humanized_rating
  	
  expected = 'One star'

  actual = comment

  assert_equal expected, actual
end

end
