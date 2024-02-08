class News < ApplicationController 
  def index 
    @news = news.all 
  end
end
