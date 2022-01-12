class HomeController < ApplicationController
  def index
  end
  def about
    @about_me = "This is a exemple of a instance variable"
  end
end
