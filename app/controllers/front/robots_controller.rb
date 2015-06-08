module Front
  class RobotsController < ApplicationController

    def show
      robot = ::SEO::Robot.first || ::SEO::Robot.new
      render text: robot.content
    end

  end
end
