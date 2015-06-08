require 'test_helper'

module Front
  class RobotsControllerTest < ActionController::TestCase

    test "show returns success" do
      SEO::Robot.create(content: "robot things")
      get :show
      assert_response :success
    end

    test "renders empty page if no robots" do
      get :show
      assert_response :success
    end

    test "render the right content" do
      SEO::Robot.create(content: "robot things")
      get :show
      assert_equal  "robot things", response.body
    end
  end
end
