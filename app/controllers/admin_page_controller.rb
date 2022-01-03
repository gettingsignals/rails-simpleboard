class AdminPageController < ApplicationController
  before_action :admin_user, only: [:home]
  def home
    @categories = Category.all
    render "categories/index"
  end
end
