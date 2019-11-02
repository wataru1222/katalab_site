class HomeController < ApplicationController
  def index
    @treatments = Tretment.all
  end
end
