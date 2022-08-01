class ArticlesController < ApplicationController

 skip_before_action :verify_authenticity_token, :only => [:destroy]
  def index
    @articles=Article.all
  end


  def show
    @article = Article.find(params[:id])
    @commentable = @article
    @comments = @commentable.comments
    @comment = Comment.new
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    # redirect_to root_path, status: :see_other
  end

  def xml
    @article=Article.find(3)
    render xml:@article.title
  end

  def json
    @articles=Article.all
    render json:@articles
  end

  def articles_by_category
    @category=Category.find(params[:category_id])
    @articles=@category.article
    render "articles/index"
  end

  private

  def article_params
    params.require(:article).permit(:title,:body,:category_id)
  end


end
