class PagesController < ApplicationController
  def home
    @skills = Skill.all
    @portfolios = Portfolio.all
  end

  def about
  end

  def contact
  end
end
