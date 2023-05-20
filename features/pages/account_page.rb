
module Account

  class AccountPage < SitePrism::Page
    INVOICE_LIST_SECTION = '.content'
    FIRST_INVOICE_LINK = 'div:nth-child(3) > div:nth-child(5) > a'
  
   def invoice_list_section
    page.find(INVOICE_LIST_SECTION)
   end

   def first_invoice_link
    page.find(FIRST_INVOICE_LINK)
   end
 end
end
