Given('that the user opens login page') do
  login_page = Login::LoginPage.new
  login_page.load

  expect(page).to have_current_path('https://automation-sandbox-python-mpywqjbdza-uc.a.run.app/', url:true)
end

When('the user fills in the fields login') do
  login_page = Login::LoginPage.new
  login_page.load

  login_page.username.set 'demouser'
  login_page.password.set'abc123'
  login_page.login_button.click

  expect(page).not_to have_selector(login_page.class::LOGIN_BUTTON)
end

When('the user fills in fields with invalid data') do
  login_page = Login::LoginPage.new
  login_page.load

  login_page.username.set 'Demouser'
  login_page.password.set'abc123'
  login_page.login_button.click

  expect(page).to have_selector(login_page.class::LOGIN_BUTTON)
end

When('the user sees the error message on the login page') do
  login_page = Login::LoginPage.new
  login_page.load

  expect(login_page.message_error.text).to eql "Wrong username or password."
end
