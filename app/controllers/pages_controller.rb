class PagesController < ApplicationController
  def index
    @topics = Topic.all
  end

  def help
  end
end
