require 'spec_helper'

module Pages
  class Menu

    def open
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
      ProductsPage.new
    end

    def suppliers
      open
      id('menu_item_suppliers').click
      SupplierPage.new
    end

    def tradeshows
      open
      id('menu_item_tradeshows').click
      TradeshowsPage.new
    end
  end
end
