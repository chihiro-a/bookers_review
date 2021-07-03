class BooksController < ApplicationController
    def new
        @book = Book.new
    end
    
    def index
        @books = Book.all
    end
    
    def edit
        @book = Book.find(params[:id])
        redirect_to book_path(@book)
    end
    def destroy
        @book = Book.find(params[:id])
        redirect_to books_path
    end
end
