class ArticlesController < ApplicationController
  def index
   end

   def create
     @article = Article.new(article_params)

     @article.save
     redirect_to @article
   end


   def new
   end

   def show
     @article = Article.find(article_params)
   end

   private
     def article_params
       params.require(:article).permit(:title, :text)
     end


end
