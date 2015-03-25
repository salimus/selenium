# filename saucelabs-accounts.rb

class Account


  SUCCESS_LOGIN = { id: 'accountContainer' }

  def initialize(driver)
    @driver = driver
  end

  def success_login?
    @driver.find_element(SUCCESS_LOGIN).displayed?
  end


end