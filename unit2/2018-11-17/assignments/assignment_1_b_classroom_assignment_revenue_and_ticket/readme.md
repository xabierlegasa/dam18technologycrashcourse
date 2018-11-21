# Classroom Assignment

## Task

* Jose María is working on a business plan for year 2018. He needs some basic statistics from 2017.
These statistics will be used as inputs for the business plan. You receive an e-mail with questions
from José María that you should answer ASAP. The email reads:

> “ Hi, I need to know the payments we have in France, how
much revenue we did and the ticket. The same for Italy. Which
one performs better? Waiting for your response. Best. JM.

* You should answer the e-mail looking at the data. You don’t have means to ask for clarifications.


## Solution

Read Only Google Sheets link:
https://docs.google.com/spreadsheets/d/17sBYwQ5OkhiyE5Nd26yidRwmdk7XLol14sIBsaBOXNU/edit?usp=sharing


# Steps I followed


1. I see there are 13.769 rows transactions for FR and IT that happened in 2017.
```
select count(transaction_id)
from payment_transactions
where transaction_country in ('IT', 'FR')
and DATE_PART(y, transaction_timestamp) = 2017;
```

2. Select FR and IT rows and export them to Google Sheets
```
select *
from payment_transactions
where transaction_country in ('IT', 'FR')
and DATE_PART(y, transaction_timestamp) = 2017;
```

3. In Google sheet, I've created a Pivot table: (Data -> Pivot Table...) where:
    - Rows are: country, transaction_type and transaction_status. 
    - Values are:
        - SUM of Transaction amount
        - SUM of Transaction Total
        - AVERAGE of Transaction total
        - AVERAGE of Transaction amount



















