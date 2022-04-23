class CartController < ApplicationController
  def create
      puts "Adding #{params[:id]} to cart"
      
      id = params[:id].to_i
      quantity = params[:quantity].to_i
      session[:shopping_cart] << id
      session[:quantity] << quantity
      session[:subtotal] = 0
      session[:subtotal] = 0
      session[:shopping_cart].each do |board|
        indBoard = Board.find(board)
        session[:subtotal] += (indBoard.price * session[:quantity][session[:shopping_cart].index(indBoard.id)])
      end
      redirect_to boards_path
  end

  def destroy
      id = params[:id].to_i
      session[:quantity].delete_at(session[:shopping_cart].index(id))
      session[:shopping_cart].delete(id)
      board = Board.find(id)
      session[:subtotal] = session[:subtotal] - board.price
      redirect_to boards_path
  end

  def update
    id = params[:id].to_i
    quantity = params[:quantity].to_i

    board = Board.find(id)

    session[:quantity][session[:shopping_cart].index(id)] = quantity

    session[:subtotal] = 0
    session[:shopping_cart].each do |board|
      indBoard = Board.find(board)
      session[:subtotal] += (indBoard.price * session[:quantity][session[:shopping_cart].index(indBoard.id)])
    end

    redirect_back(fallback_location: root_path)
  end

  def show
  end
end

