class ApplicationController < ActionController::Base

    before_action :initialize_session
    helper_method :cart

    before_action :configure_permitted_parameters, if: :devise_controller?
      
    protected
    
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:address, :postalcode, :province_id])
    end

    private

    def initialize_session
        session[:quantity] ||= []
        session[:shopping_cart] ||= []
        session[:subtotal] ||= 0
    end

    def cart    
        Board.find(session[:shopping_cart])
    end
end
