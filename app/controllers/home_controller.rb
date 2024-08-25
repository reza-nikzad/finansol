class HomeController < ApplicationController
  def index
    @title = "Welcome to MyApp"
  end

  def about
    @title = "About Us"
  end
end
