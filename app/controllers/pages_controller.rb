class PagesController < ApplicationController
  def home
   
    @portfolios = Portfolio.all
  end

  def about
    @skills = Skill.all
  end

  def contact
  end
end
