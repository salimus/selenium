#filename: saucelabs-login_spec.rb

require 'selenium-webdriver'
require_relative 'saucelabs-login'
require_relative 'saucelabs-account'


describe 'Login Saucelabs' do

  before(:each) do
    @driver = Selenium::WebDriver.for :firefox
    ENV['base_url'] = 'https://saucelabs.com'
    @driver.get(ENV['base_url'] + '/login')
    @login = Login.new(@driver)
    @account =Account.new(@driver)

  end

  after(:each) do
    @driver.quit
  end

  it 'succeeded' do
    @login.with('saucelabs.automation@gmail.com', 'SauceLabs2015')
    @account.success_login?.should be_true
  end

  it 'failed' do
    @login.with('saucelabs.automation@gmail.com', 'asdf')
    @login.failed_login?.should be_true
  end

end
