# app/controllers/articles_controller.rb
class ArticlesController < ApplicationController
  before_action :find_article, only: :show
  def index
    @articles = Article.all
    render json: @articles
  end

  def show
    render json: @article
  end

  private
  def find_article
    @article = Article.find(params[:id])
  end
end

# app/controllers/author_controller.rb
class AuthorsController < ApplicationController
  before_action :find_author, only: :show
  def index
    @authors = Author.all
    render json: @authors
  end

  def show
    render json: @author
  end

  private
  def find_author
    @author = Author.find(params[:id])
  end
end