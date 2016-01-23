class IndexController < ApplicationController
  
  def home
    @opinions = Opinion.all
  end

end
