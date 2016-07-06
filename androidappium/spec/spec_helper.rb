# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/autorun'
# Android gems
require 'spec'
require 'appium_lib'
require 'sauce_whisk'
# IOs gems
require 'rspec'
require 'json'
require 'rest_client'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/**/*.rb")].each { |f| require f }

def setup_driver
  return if $driver
  caps = Appium.load_appium_txt file: File.expand_path('./', __FILE__), verbose: true
  Appium::Driver.new caps
end

PAGE_OBJECTS = [RSpec::Core::ExampleGroup, Pages::HomePage, Pages::LoginPage, Pages::Menu,
                Pages::ProductsPage, Pages::SupplierPage, Pages::TradeshowsPage]

def promote_methods
  PAGE_OBJECTS.each { |page| Appium.promote_appium_methods page }
end

setup_driver
promote_methods

RSpec.configure do |config|

  config.before(:each) do
    $driver.start_driver
  end

  config.after(:each) do
    driver_quit
  end

end
