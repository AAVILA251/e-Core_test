
module Invoice

  class InvoiceDetails < SitePrism::Page
    STAY_DETAILS_TABLE = '.table > tbody > tr > td'
    HOTEL_NAME = '.container h4'
    INVOICE_DATE = 'ul > li'
    DUE_DATE = 'ul > li'
    CUSTOMER_DETAILS = 'section > div > div'
  
   def stay_details_table
    page.all(STAY_DETAILS_TABLE)
   end

   def first_invoice_link
    page.find(FIRST_INVOICE_LINK)
   end

   def hotel_name 
    page.find(HOTEL_NAME)
   end

   def invoice_date
    page.all(INVOICE_DATE)[1]
   end

   def due_date
    page.all(DUE_DATE)[2]
   end

   def customer_details
    page.find(CUSTOMER_DETAILS)
   end
 end
end
