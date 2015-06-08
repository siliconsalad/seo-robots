class CreateSeoRobots < ActiveRecord::Migration
  def change
    create_table :seo_robots do |t|
      t.text :content
    end
  end
end
