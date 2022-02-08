class PagesController < ApplicationController
  def home
    @post = Blog.all
    @skills = Skill.all
  end

  def contact; end

  def about; end
end
