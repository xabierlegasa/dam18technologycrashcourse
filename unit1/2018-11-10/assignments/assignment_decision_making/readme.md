# Assignment:  Decision making

## Task
Clients complain that the searches for a destinations sometimes fail. Head of product decided to address
the issue, and ask development team to work on fix.

* The team committed to work out the solution during August. It was agreed that the team’s bonus payout
would depend on effectiveness of the solution.
* The Head of Product ask you to analyze the data and help him to decide whether the team deserve
the bonus?
* Your answer should be documented and submitted to the GitHub so that any changes can be easily
tracked.

## Useful context
* Data for Barcelona destination (18452212) is representative so that any conclusions can be extrapolated
for other destinations.


# Steps & Analysis


1. Downloaded the 2 files of data we have:
```
aws s3 cp s3://data.public.bdatainstitute.com/dam18 . --recursive
```

2. Converted both Json files to CSV with an online tool (https://konklone.io/json/) and pasted on a google sheet:

[Assignment Google Sheet (read only)](https://docs.google.com/spreadsheets/d/10ACyW-WBeB19h12ZH0DQcL8VIuGCOu-6ouJH-il0DDQ/edit?usp=sharing "Assignment link")

Each log item is converted to a single row:
```
{  
   "destination_id":18452212,
   "logs":[  
      {  
         "queries":{  
            "correct":"645",
            "error":"14"
         },
         "users":"659",
         "timestamp":"2018-08-01 19:43:11"
      },
      {  
         "queries":{  
            "correct":"650",
            "error":"16"
         },
         "users":"666",
         "timestamp":"2018-08-01 19:45:24"
      },
      ...
```

```
queries/correct,queries/error,users,timestamp
645,14,659,2018-08-01 19:43:11
650,16,666,2018-08-01 19:45:24
...
```
