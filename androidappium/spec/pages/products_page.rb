require 'spec_helper'

module Pages
  class ProductsPage
    def select_category
      id('btnCategory').click
    end

    def check_category
      ids('itemCheckBox').first.click
    end

    def search
      wait { id('btn_search_product').click }
    end

    def products_found
      wait { text('Products found') }
    end
  end
end
