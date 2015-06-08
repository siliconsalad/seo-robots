Rails.application.routes.draw do

  namespace :front, path: "/" do
    resource :robots, only: :show
  end
end
