require 'spec_helper'

module Pages
  class HomePage

      def product_search
        first_textfield
      end

      def supplier_search
        textfield(2)
    end
  end
end
