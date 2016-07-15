require 'spec_helper'

module Pages
  class SettingsPage
    def general
      wait { text('General') }
    end

    def presentations
      wait { text('Presentations') }
    end

    def payments
      wait { text('Payments') }
    end

    def back
      back
    end
  end
end
