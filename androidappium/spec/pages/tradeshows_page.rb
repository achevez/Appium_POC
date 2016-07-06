require 'spec_helper'

module Pages
  class TradeshowsPage
    def list
      wait { id('list') }
    end
  end
end
