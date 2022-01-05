class CategoriesController < ApplicationController
  before_action :admin_user, only: [:new, :create, :edit, :update, :destory]

  def index
    @categories = Category.paginate(page: params[:page])
  end

  def show
    @category = Category.find(params[:id])
    if logged_in?
      @message = Message.new({category_id: params[:id], user_id: current_user.id})
      @messages = @category.messages.where(user_id: current_user.id).or(@category.messages.where(visibility: true)).paginate(page: params[:page])
    else
      @message = nil
      @messages = @category.messages.where(visibility: true).paginate(page: params[:page])
    end
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = "Created Category!"
      redirect_to admin_page_category_path
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
      redirect_to admin_page_category_path
    else
      render 'edit'
    end
  end

  def destroy
    Category.find(params[:id]).destroy
    flash[:success] = "Category deleted"
    redirect_to admin_page_category_path
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end
end
