#filename: saucelabs-login_spec.rb

require 'selenium-webdriver'
require_relative 'saucelabs-login'

describe 'Login' do


  before(:each) do
    @driver = Selenium::WebDriver.for :firefox
    ENV['base_url'] = 'https://saucelabs.com'
    @login = Login.new(@driver)
  end


  after(:each) do
    @driver.quit
  end


  it 'succeeded' do
    @login.with('saucelabs.automation@gmail.com', 'SauceLabs2015')
    @login.success_message_present?.should be_true
  end

  it "failed" do
    @login.with('saucelabs.automation@gmail.com', 'asdf')
    @login.failure_message_present?.should be_true
  end

end