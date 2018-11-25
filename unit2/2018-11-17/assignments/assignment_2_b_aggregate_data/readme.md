# Assignment 2b: Aggregate Data


## Task

* Which are our top countries in sales (which currency?).
* Also, do you consider how many invalid transactions we have?
* What is the refund rate?


## Steps And Results

1. Lets group by country and sum transaction amount by exchange rate without taking into account currency

```
select pt.transaction_country, sum(transaction_amount * xrate_eur) as tot
from payment_transactions as pt
where pt.transaction_type = 'payment'
and pt.transaction_status = '1'
group by pt.transaction_country
order by tot desc
limit 20
```

|transaction_country|tot|
|--------:|---:|
|IN|25354456|
|MX|14537236|
|US|3124892|
|AU|254294|
|CA|118363|
|IT|117954|
|YY|81692|
|FR|81573|
|BR|79690|
|GB|58839|
|CN|45073|
|MZ|39137|
|SV|31109|
|AR|19195|
|CH|17865|
|PA|17584|
|PE|15922|
|NZ|15478|
|SG|14036|
|CO|9640|



2. There are difference currency payment per countries. If we also group by currency:

```
select pt.transaction_country, pt.transaction_currency, round(sum(transaction_amount * xrate_eur)) as tot
from payment_transactions as pt
where pt.transaction_type = 'payment'
and pt.transaction_status = '1'
group by pt.transaction_country, pt.transaction_currency
order by tot desc
limit 15
```


|transaction_country|transaction_currency|tot|
|-------------------:|--------------------:|---:|
|IN|INR|25.353.507|
|MX|MXN|14.533.029|
|US|INR|1.345.668|
|US|USD|1.177.898|
|US|MXN|597.075|
|AU|INR|176.572|
|CA|USD|79.405|
|AU|USD|77.616|
|BR|BRL|75.610|
|IT|EUR|71.040|
|FR|EUR|61.432|



3. Let's calculate refund rate

select transaction_type, count(transaction_id)
from payment_transactions
group by transaction_type

|transaction_type|count|
|----------------:|-----:|
|payment|46632|
|refund|45769|


This is interesing: payments and refunds are not so far from each other.














  