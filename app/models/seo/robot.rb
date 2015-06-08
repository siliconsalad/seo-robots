# == Schema Information
#
# Table name: seo_robots
#
#  id      :integer          not null, primary key
#  content :text
#

module SEO
  class Robot < ActiveRecord::Base

    validates :content, presence: :true

    validates_with ::SingletonValidator, on: :create

  end
end
