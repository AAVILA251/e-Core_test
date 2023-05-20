Then('the user sees the invoice list page') do
  account_page = Account::AccountPage.new

  expect(page).to have_selector(account_page.class::INVOICE_LIST_SECTION)
end

And('the user clicks invoice details link') do
  account_page = Account::AccountPage.new
  account_page.first_invoice_link.click
end
