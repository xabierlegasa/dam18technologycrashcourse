# Assignment: Search Redshift alternatives



Some Data Warehouses solutions are:

| Solution      | Managed vs Licensed | Language | Data Processing |
| ------------- |:-------------:| -----:| -----:|
| HP Vertica      | Licensed/On Demand | Vertica SQL | MPP |
| Clustrix      |       |   $12 | SQL |
| CitusDB | Licensed      |    PostgresSQL | MPP |
| Googel Big Query | Fully Managed      |    SQL-like | MPP |
| Pivotal Geenplum | Licensed | SQL | MPP |
| Cloudera Impala | Licensed | SQL | MPP |
| Amazon Redshift | Fully Managed | Postgres SQL | MPP |
| Hive | Licensed |   HiveQL (SQL like) | SQL like query engine build on Hadoop |

[Source: https://amplitude.com/blog/2015/03/27/why-we-chose-redshift](https://amplitude.com/blog/2015/03/27/why-we-chose-redshift)




 
 
Redshift Key attributes are these:
* Postgres on the foundation, extended with mathematical, statistical and data mining functions.
* Columnar storage structure (Can be ideal for analyzing a column with less I/O operations)
* Massively Parallel Processing (MPP) architecture: Avoids resource bottelneck sharding the data over multiple servers.

[Source: https://www.ness.com/amazon-redshift-vendor-lock-in-never-felt-so-good/](https://www.ness.com/amazon-redshift-vendor-lock-in-never-felt-so-good/)





I would choose between Redshift or Google Big Query: Both solutions offer Fully Managed license, SQL like Language and MPP Data processing.

There are hundreds of analysis comparing both. In this analysis by a company called panoply they compare both:

> BigQuery is an awesome database, and much of what we do at Panoply is inspired by it. We’re working hard to make our platform as easy, simple and fun to use as BigQuery. Simplicity is one of most important aspects of a product, and BigQuery is way ahead on that front.

> Inspiring as BigQuery and Google in general may be, practically across the board we found Redshift to be superior. It provides significantly superiorusability, performance, and cost for the majority of analytical use-cases, especially at scale. The only critical apparent drawback of Redshift is its relative complexity as it requires constant low-level tuning of the virtualized hardware and database configurations. This apparent complexity is double edged as it can be seen as greater flexibility that allows us to fine-tune Redshift to our specific needs which will result in an even greater advantage in performance and cost.


[Source: https://blog.panoply.io/a-full-comparison-of-redshift-and-bigquery](https://blog.panoply.io/a-full-comparison-of-redshift-and-bigquery)



