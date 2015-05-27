class ArticlesController < ApplicationController
	before_action :set_article, only: [:show, :edit, :update, :destroy]


	def index
		@article = Article.all
	end

	def show 
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
		if @article.save
			redirect_to articles_path
		else 
			render :new
		end

	end

	def edit
  	end

  	def update
	    if @article.update_attributes(article_params)
	      redirect_to articles_path
	    else
	      render :edit
	    end
  
  	end

  	def destroy
	    @article.destroy
	    redirect_to articles_path
  	end

  	private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:title, :text)
    end

end
