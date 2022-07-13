class Admin::DashboardController < Admin::AdminController
  def show
    @products = Product.count
    @categories = Category.count
  end
end
