class PagesController < ApplicationController
  def home
  	@skills = Skill.all
  	@blogs = Blog.all
  end

  def about
  end

  def contact
  end

  def news
    @tweets = SocialTool.twitter_search
  end
end
