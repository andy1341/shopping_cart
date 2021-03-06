module ShoppingCart
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def copy_initializer
        template "shopping_cart.rb", "config/initializers/shopping_cart.rb"
      end

      def copy_assets
        template 'assets/javascripts/shopping_cart/application.js', 'app/assets/javascripts/shopping_cart.js'
        template 'assets/stylesheets/shopping_cart/application.scss', 'app/assets/stylesheets/shopping_cart.scss'
      end

      def add_route
        route "mount ShoppingCart::Engine, at: '/cart'"
      end
    end
  end
end
