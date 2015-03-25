# filename saucelabs-login.rb

class Login

  LOGIN_FORM  = { id: 'login' }
  USERNAME_INPUT = { id: 'username' }
  PASSWORD_INPUT = { id: 'password' }
  FAILED_LOGIN = { css: '.alert.alert-error'}

  def initialize(driver)
    @driver = driver
    @driver.find_element(LOGIN_FORM).displayed?.should == true
  end

  def with(username, password)
    @driver.find_element(USERNAME_INPUT).send_keys(username)
    @driver.find_element(PASSWORD_INPUT).send_keys(password)
    @driver.find_element(LOGIN_FORM).submit
  end


  def failed_login?
    @driver.find_element(FAILED_LOGIN).displayed?
  end

end