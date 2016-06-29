require './spec/spec_helper'

describe 'As a gap user, ' do

  let(:login_page) { Pages::LoginPage.new }
  let(:menu) { Pages::Menu.new }
  let(:username) { 'gap' }
  let(:password) { 'android428' }

  before(:each) do
    login_page.login(username, password)
  end

  after(:each) do
    menu.logout
  end

  it 'I am able to search products and see results' do
    products_page = menu.products_search
    products_page.select_category
    products_page.check_category
    products_page.search
    expect(products_page.products_found.displayed?).to be(true)
  end
end
