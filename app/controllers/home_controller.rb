class HomeController < ApplicationController
  def index
    @treatments = Treatment.all
  end
end
