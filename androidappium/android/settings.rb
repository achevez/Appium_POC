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

  it 'I am able to view settings section' do
    settings_page = menu.settings
    expect(settings_page.general.displayed?).to be(true)
    expect(settings_page.presentations.displayed?).to be(true)
    expect(settings_page.payments.displayed?).to be(true)
    settings_page.back
  end
end
