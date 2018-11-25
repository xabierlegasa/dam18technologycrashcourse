# Classroom assignment

Task:

* Hi, could you checkh how many users we adquire every month? Rough estimation for monthly average Q1 2017? Best. JM.


### Steps

select count(user_id), to_char(user_acquisition_timestamp,'YY-MM') as year_month
from users
group by year_month

1. 

```
select extract(year from user_acquisition_timestamp) as yyyy, extract(month from user_acquisition_timestamp) as mm, count(user_id)
from users
group by yyyy, mm
```

Monthy average for Q1 2017 is 36113








