class PagesController < ApplicationController
  def contact
    @title = "Contact"
  end

  def about
    @title = "About" 
  end

  def diets
    @title = "Diets"
  end

end
