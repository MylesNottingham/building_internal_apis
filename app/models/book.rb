class Book < ApplicationRecord
  has_many :store_books
  has_many :stores, through: :store_books

  before_save { |book| book.popularity = calculate_popularity }

  def num_stores
    stores.count
  end

private

  def calculate_popularity
    if number_sold > 5
      "high"
    else
      "low"
    end
  end
end
