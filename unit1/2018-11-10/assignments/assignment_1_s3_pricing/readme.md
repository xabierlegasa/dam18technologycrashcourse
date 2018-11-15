# Assignment 1:  Get Familiar with s3


## Task
* Online Travel Company uses S3 to store statistics on successful and failed searches data for the hotel reservation.
As a data analyst you will help the Head of Product.
* Head of Product wants to know: What is the estimated monthly cost, the company needs to pay for storing this
data?
* You should answer the question and prepare a brief summary that justify your answer.

## Useful context
* The company operates approximately with 5000 different destinations and 5 years (60 months) of data.
* Searches are stored by location and time. Every location and month is represented by a file similar to :
s3://data.public.bdatainstitute.com/dam18/search_logs/2018/09/2018_09_18452212_log.json
(filename contains: Year, Month and ServiceID)


## Proposed Solution

> AWS has itself a cost calculator: 
>
> [See AWS Cost calculator](https://calculator.s3.amazonaws.com/index.html)



5000 destinations * 5 years * 12 months =  300000 files to store
300000 files * 232 922 bytes each file = 69.8766 GB
=========================
Total size: 69.8766 GB


If we don't use AWS Free tier, storage cost will be 1.61$ per month, according to the AWS calculator

We need to add other costs depending on
* Number of requests
* Data returned by s3 Select
...

We need to ask this data to give the exact amount


