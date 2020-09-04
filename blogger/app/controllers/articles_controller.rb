class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end

    def show
        @article = Article.find(params[:id])
    end

    def new
        @article = Article.new
    end

    def create
        @article = Article.new(article_params_validate)
 
        if @article.save
            redirect_to @article
        else
            render 'new'
        end
    end

    def destroy
        @article = Article.find (params[:id])
        @article.destroy
        redirect_to @article

    end

    private
    def article_params_validate
        params.require(:article).permit(:title, :body)
    end
end
