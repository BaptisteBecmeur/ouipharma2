class PagesController < ApplicationController

  def home
    @featured_announces = Annonce.all.limit(5)
  end

end
