Feature: Open login page to check if the customer is able to see Invoice list page

@TC001
Scenario: Login (Positive)
Given that the user opens login page
When the user fills in the fields login
Then the user sees the invoice list page

@TC002 
Scenario: Login (Negative)
Given that the user opens login page
When the user fills in fields with invalid data
Then the user sees the error message on the login page

@TC003
Scenario: Validate invoice details
Given that the user opens login page
And the user fills in the fields login
And the user sees the invoice list page
And the user clicks invoice details link 
And the user check the Hotel name 
And the user check the Invoice and Due date
Then the user check the Booking/Stay details
| booking_Code |	room	      | total_Stay_count | total_stay_amount | check_in   | check_out  |
| 0875         | Superior Double  | 1                | $150              | 14/01/2018 | 15/01/2018 |
Then the user check the Customer Details
Then the user check the Billing Details
| deposit_nowt | tax_vat | total_amount |
| USD $20.90   | USD $19 | USD $209     |
