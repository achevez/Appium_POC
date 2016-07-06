require 'spec_helper'

module Pages
  class OrdersPage
    def list
      wait { id('list') }
    end
  end
end
