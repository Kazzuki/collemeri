class FormsController < ApplicationController
  def new
    @book_id = params[:book_id]
    @book_user = Book.find(@book_id).user.id
    @customer = current_user.id
  end

  def destroy
  end
end
