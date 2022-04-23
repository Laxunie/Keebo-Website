class CheckoutController < ApplicationController
    def create
        @board = Board.find(params[:id])

        if @board.nil?
            redirect_to root_path
            return
        end

        @session = Stripe::Checkout::Session.create(
            payment_method_types: ['card'],
            line_items:[{
                kit: @board.kit,
                switches: @board.switches,
                stabilizers: @board.stabilizers,
                keycaps: @board.keycaps,
                price: @board.price
            }],
            success_url: checkout_success_url,
            cancel_url: checkout_cancel_url
        )
        respond_to do |format|
            format.js
        end
    end

    def success
    end

    def cancel
    end
end
