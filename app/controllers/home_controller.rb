class HomeController < ApplicationController

  def index
  end

  def about
    @page_header = "About Us"
  end

  def contact
    @page_header = "Contact Us"
  end

end
