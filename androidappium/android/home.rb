require './spec/spec_helper'

describe 'As a gap user, ' do

  let(:login_page) { Pages::LoginPage.new }
  let(:home_page) { Pages::HomePage.new }
  let(:menu) { Pages::Menu.new }
  let(:username) { 'gap' }
  let(:password) { 'android428' }

  after(:each) do
    menu.logout
  end

  it 'I am able to login and see home page' do
    login_page.login(username, password)
    expect(home_page.sage_news.displayed?).to be(true)
    expect(home_page.featured_product.displayed?).to be(true)
  end
end
