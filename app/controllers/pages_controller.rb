class PagesController < ApplicationController
  def home
    @post = Blog.all
  end

  def contact
  end

  def about
  end
end
