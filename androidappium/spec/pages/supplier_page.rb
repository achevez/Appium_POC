require 'spec_helper'

module Pages
  class SupplierPage
    def search_company
      id('buttonSupplierList').click
    end

    def check_supplier
      wait { ids('itemCheckBox').first.click }
      wait { first_textfield.text }
    end

    def search
      id('btn_search_supplier').click
    end

    def company_name
      id('textCompanyName').text
    end
  end
end
