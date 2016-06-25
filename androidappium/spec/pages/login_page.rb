require 'spec_helper'

module Pages
  class LoginPage

    def login(username, password)
      fill_in_username(username)
      fill_in_password(password)
      submit
    end

    def fill_in_username(username)
      first_textfield.send_keys(username)
    end

    def fill_in_password(password)
      last_textfield.send_keys(password)
    end

    def submit
      button(1).click
    end

    def username
      id('txtLogin')
    end
  end
end
