class ApplicationController < ActionController::Base
    def run
      # Create sample instances and test the methods here
      user = User.first
      product = Product.first
  
      # Test User methods
      p user.products
      p user.reviews
      p user.favorite_product
      user.remove_reviews(product)
  
      # Test Product methods
      p product.reviews
      p product.users
      product.leave_review(user, 4, "Great product!")
      product.leave_review(user, 5, "Amazing!")
      product.print_all_reviews
      p product.average_rating
    end
  end
  