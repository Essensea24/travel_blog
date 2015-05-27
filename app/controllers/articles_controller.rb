class ArticlesController < ApplicationController
	before_action :set_article, only: [:show, :edit, :update, :destroy]

	http_basic_authenticate_with name: "hi", password: "there", except: [:index, :show]


	def index
		@user = User.find(params[:user_id])
		@article = Article.all
	end

	def show 
		@user = User.find(params[:user_id])
	end

	def new
		@user = User.find(params[:user_id])
		@article = Article.new
	end

	def create
		@user = User.find(params[:user_id])
		@article = Article.new(article_params)
		if @article.save
			redirect_to articles_path
		else 
			render :new
		end

	end

	def edit
		@user = User.find(params[:user_id])
  	end

  	def update
  		@user = User.find(params[:user_id])
	    if @article.update_attributes(article_params)
	      redirect_to articles_path
	    else
	      render :edit
	    end
  
  	end

  	def destroy
  		@user = User.find(params[:user_id])
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
