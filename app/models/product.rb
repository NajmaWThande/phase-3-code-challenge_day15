class Product < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
  
    def print_all_reviews
      reviews.each { |review| review.print_review }
    end
  
    def average_rating
      reviews.average(:star_rating).to_f
    end
  
    def leave_review(user, star_rating, comment)
      reviews.create(user: user, star_rating: star_rating, comment: comment)
    end
  end
  