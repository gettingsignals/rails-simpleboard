class AdminPageController < ApplicationController
  before_action :admin_user
  def home
  end

  def category
    @categories = Category.paginate(page: params[:page])
  end

  def show_category
    @category = Category.find(params[:id])
    @messages = @category.messages.paginate(page: params[:page])
  end
end
