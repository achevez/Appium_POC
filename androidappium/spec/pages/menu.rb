require 'spec_helper'

module Pages
  class Menu

    def open
      #first_button.click
      id('buttonDrawerMenu').click
    end

    def logout
      open
      id('menu_item_logout').click
      confirm_logout
    end

    def confirm_logout
      first_button.click
    end

    def products_search
      open
      id('menu_item_products').click
      Products.new
    end
  end
end
