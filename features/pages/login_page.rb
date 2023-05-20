
module Login

  class LoginPage < SitePrism::Page
    set_url 'https://automation-sandbox-python-mpywqjbdza-uc.a.run.app/'
    USERNAME = '[name="username"]'
    PASSWORD = '[name="password"]'
    LOGIN_TITLE = '[class="container"] h1'
    LOGIN_BUTTON = '#btnLogin'
    MESSAGE_ERROR = '[class^="alert"]'

  def username
    page.find(USERNAME)
  end

  def password
    page.find(PASSWORD)
  end

  def login_title
    page.find(LOGIN_TITLE)
  end

  def login_button
    page.find(LOGIN_BUTTON)
  end

  def message_error
    page.find(MESSAGE_ERROR)
  end
 end
end
