require 'spec_helper'

module Pages
  class HomePage
    def product_search
      first_textfield
    end

    def supplier_search
      textfield(2)
    end

    def sage_news
      wait { text('SAGE News') }
    end

    def featured_product
      wait { text('Featured Product') }
    end
  end
end
