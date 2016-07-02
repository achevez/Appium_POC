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

  it 'I am able to search suppliers and see results' do
    suppliers = menu.suppliers
    suppliers.search_company
    supplier = suppliers.check_supplier
    suppliers.search
    expect(suppliers.company_name).to eq(supplier)
  end
end
