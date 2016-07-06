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

  it 'I am able to view publications list' do
    publications_page = menu.publications
    expect(publications_page.list.displayed?).to be(true)
  end
end
