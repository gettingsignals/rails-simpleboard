class CategoriesController < ApplicationController
  before_action :admin_user, only: [:new, :create, :edit, :update, :destory]
  
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = "Created Category!"
      # redirect_to @category
      redirect_to categories_url
    else
      render 'new'
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      flash[:success] = "Category updated"
      redirect_to admin_page_home_path
    else
      render 'edit'
    end
  end

  def destroy
    Category.find(params[:id]).destroy
    flash[:success] = "Category deleted"
    redirect_to admin_page_home_path
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end
end
