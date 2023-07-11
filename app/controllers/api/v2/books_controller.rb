class Api::V2::BooksController < ApplicationController
  def index
    render json: BookSerializer.new(Book.all)
  end

  def show
    render json: BookSerializer.new(Book.find(params[:id]))
  end
end
