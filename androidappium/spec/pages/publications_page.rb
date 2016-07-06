require 'spec_helper'

module Pages
  class PublicationsPage
    def list
      wait { id('list') }
    end
  end
end
