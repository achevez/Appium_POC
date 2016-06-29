require './spec/spec_helper'

describe 'As a gap user, ' do

  let(:login_page) { Pages::LoginPage.new }
  let(:home_page) { Pages::HomePage.new }
  let(:menu) { Pages::Menu.new }
  let(:username) { 'gap' }
  let(:password) { 'android428' }

  it 'I am able to login and logout successfully' do
    login_page.login(username, password)
    expect(home_page.product_search.displayed?).to be(true)
    menu.logout
    expect(login_page.username.displayed?).to be(true)
  end
end
