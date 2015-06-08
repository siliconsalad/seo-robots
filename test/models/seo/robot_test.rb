require 'test_helper'

class SEO::RobotTest < ActiveSupport::TestCase

  test "Robot saves successfully with a content" do
    assert_difference "SEO::Robot.count", 1 do
      SEO::Robot.create(content: "some robot text")
    end
  end

  test "Robot does not save without content" do
    assert_difference "SEO::Robot.count", 0 do
      SEO::Robot.create content: ""
    end
  end

  test "Robot does not saves if there is already one" do
    SEO::Robot.create content: "first robot"
    assert_no_difference("SEO::Robot.count") do
      SEO::Robot.create content: "second robot"
    end
  end

  test "Robot updates correctly" do
    seo_robots = SEO::Robot.create content: "seo_robots the robot"
    seo_robots.update content: "a robot called seo_robots"
    assert "a robot called seo_robots", seo_robots.content
  end

  test "Robot destroys" do
    seo_robots = SEO::Robot.create(content: "seo_robots the robot")
    assert_difference "SEO::Robot.count", -1 do
      seo_robots.destroy
    end
  end

end
