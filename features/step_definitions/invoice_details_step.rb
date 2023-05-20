Given('the user check the Hotel name') do
  page = GeneralPage.new
  page.switch_to_last_window

  invoice_details_page = Invoice::InvoiceDetails.new 
  expect(invoice_details_page.hotel_name.text).to eql "Rendezvous Hotel"
end

Given('the user check the Invoice and Due date') do
  page = GeneralPage.new
  page.switch_to_last_window

  invoice_details_page = Invoice::InvoiceDetails.new 
  expect(invoice_details_page.invoice_date.text).to eql "Invoice Date: 14/01/2018"
  expect(invoice_details_page.due_date.text).to eql "Due Date: 15/01/2018"
 
end

Given('the user check the Booking\/Stay details') do |table|
  page = GeneralPage.new
  page.switch_to_last_window

  invoice_details_page = Invoice::InvoiceDetails.new
  stay_details = invoice_details_page.stay_details_table

  i = 0
  table.hashes.size do
    data = table.hashes[i]
    index = data['index'].to_i - 1

    expect(stay_details[index]['Booking Code']).to eq data['booking_Code']
    expect(stay_details[index]['Booking Code']).to eq data['booking_Code']
    expect(stay_details[index]['Room']).to eq data['room']
    expect(stay_details[index]['Total Stay Count']).to eq data['total_stay_count']
    expect(stay_details[index]['Total Stay Amount']).to eq data['total_stay_amount']
    expect(stay_details[index]['Check-In']).to eq data['check_in']
    expect(stay_details[index]['Check-Out']).to eq data['check_out']   
   end
  end

  Then('the user check the Customer Details') do
    page = GeneralPage.new
    page.switch_to_last_window

    invoice_details_page = Invoice::InvoiceDetails.new 
    expect(invoice_details_page.customer_details.text).to eql "JOHNY SMITH\nR2, AVENUE DU MAROC\n123456"
  end

   Given('the user check the Billing Details') do |table|  
    page = GeneralPage.new
    page.switch_to_last_window

    invoice_details_page = Invoice::InvoiceDetails.new 
    stay_details = invoice_details_page.stay_details_table
  
    i = 0
    table.hashes.size do
      data = table.hashes[i]
      index = data['index'].to_i - 1
  
      expect(stay_details[index]['Deposit Nowt']).to eq data['deposit_nowt']
      expect(stay_details[index]['Tax&VAT']).to eq data['tax_vat']
      expect(stay_details[index]['Total Amount']).to eq data['total_amount']  
     end
  end

