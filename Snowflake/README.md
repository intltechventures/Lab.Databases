
# Snowflake Resources

## References
- https://docs.snowflake.com/en/
- https://docs.snowflake.com/en/user-guide/intro-key-concepts.html

- https://docs.snowflake.com/en/user-guide/admin-security.html


- https://www.snowflake.com/product/architecture/


- https://resources.snowflake.com/
- https://resources.snowflake.com/solution-briefs/snowflake-cloud-data-platform-solution-brief


- https://www.snowflake.com/support/

- https://www.snowflake.com/technology-partners/amazon-web-services/
  + Snowflake on Amazon Web Services (AWS) represents a SQL AWS data warehouse built for the cloud
  + Snowflake's unique architecture natively handles diverse data in a single system, with the elasticity to support any scale of data, workload, and users.




## AWS Snowflake
- https://www.snowflake.com/technology-partners/amazon-web-services/
  + https://aws.amazon.com/marketplace/pp/B01MXIOFTO
    * "Snowflake allows you to bring together diverse data into one system for data warehousing, query processing, and analytics."
    * "Performance & Elasticity: Up to 200x faster at 1/10th the cost compared to solutions not built for the cloud."
    * "Scale storage and computing independently."
    * "You can easily scale up, out, or down, automatically to handle even multi-petabyte scale."
    * "Concurrency: Provide access to the same data for multiple workgroups or workloads, simultaneously, with no contention or performance degradation."
    * "Simplicity: No knobs, tuning, or indexing required. Pay for what you need and only when you need it. Use familiar ANSI SQL semantics on diverse data, including semi-structured data such as JSON, Avro, XML, and Parquet."

- Snowflake Premier

- Snowflake Standard 


## Misc. Notes
- Snowflake is a cloud-based Data Warehouse solution provided as a Saas (Software-as-a-Service) with full support for ANSI SQL. It also has a unique architecture that enables users to just create tables and start querying data with very less administration or DBA activities needed.
- Zero management
- Storage built on S3
- Compute is separate from storage, like Amazon Aurora 
- Data processing performed by virtual warehouses, one or more clusteres of compute nodes, cached locally - designed to process enormous loads
- The Service Layer is unique
- Data is treated as relational structured data, as it loads - it discerns schema, columnairized, meta data extracted, encrypted, and compressed
- Layers:
  + Storage Layer:
    * S3
  + Compute Layer:
    * Does all the work. Virtual Warehouses - can have multiple virtual warehouses - working on the same data
  + Service Layer:
    * Understands how the data is formatted, meta data store for state management, enables all DDL functions


## Educational Resources
- https://s3.amazonaws.com/snowflake-workshop-lab/Snowflake_free_trial_LabGuide.pdf

- https://community.snowflake.com/s/get-started
- https://community.snowflake.com/s/what-is-snowflake
- https://community.snowflake.com/s/snowflake-ref-architecture
- https://community.snowflake.com/s/snowflake-security


- https://community.snowflake.com/s/migrations

- https://community.snowflake.com/s/education-services
  + https://community.snowflake.com/s/self-directed-learning
    * https://community.snowflake.com/s/scripts
    * https://community.snowflake.com/s/blog
    * https://s3.amazonaws.com/snowflake-workshop-lab/Snowflake_free_trial_LabGuide.pdf



## Presentations
- Snowflake Architecture: Building a Data Warehouse for the Cloud
  + https://www.infoq.com/presentations/snowflake-architecture/

- Automatic Clustering at Snowflake 
  + https://www.infoq.com/presentations/snowflake-automatic-clustering/

- Snowflake Automated Deployments / CI/CD Pipelines (2019)
  + https://www.slideshare.net/AndrewHansen30/snowflake-automated-deployments-cicd-pipelines
    * See slides #12, #14, 
    * Tooling:
      * Liquidbaswe (XML)
      * FlyWay (XML/JSON)
      * Sqitch (SQL)
      * Dataical (2020?)
    * "Zero-Copy Cloninig"
      * Create clones of tables, schemas, or entire databases - instantly
      * Requires no additional storage 
      * Adds no extra load on the production users 
    * See slide #26, re: Connectors available (many)
    * SnowSQL (CLI) - built off Python - can run 100+ separate queries, over 10K lines of code
    * Change and Rollback Scripts
      * Run in Rollback-only mode
      * Write all deployment logs to Storage Container via Azure CLI (or, to Azure S3 via AWS CLI?)
    * Slide #41: Split CI/CD into Lower (Deploys to DEV) and Upper (Deploys to TST and PRD)


- Hadoop Or Hadon’t: Snowflake Is An Alternative 
  + https://www.slideshare.net/Synerzip/hadoop-or-hadont-snowflake-is-an-alternative


- Snowflake: The most cost-effective agile and scalable data warehouse ever! 
  + https://www.slideshare.net/Visual_BI/snowflake-the-most-costeffective-agile-and-scalable-data-warehouse-ever


- AWS Summit Singapore 2019 | Snowflake: Your Data. No Limits 
  + https://www.slideshare.net/AWSSummits/aws-summit-singapore-2019-snowflake-your-data-no-limits?


- Master the Multi-Clustered Data Warehouse - Snowflake 
  + https://www.slideshare.net/Matillion/master-the-multiclustered-data-warehouse-snowflake


- Easily Loading and Analyzing Semi-Structured Data in Snowflake (2017)
  + https://www.youtube.com/watch?v=H0sbMDqdYQ8

- Processing JSON data in Snowflake (2016)
  + https://www.youtube.com/watch?v=c1JAX0Zw-eA



  
## Tutorials

- Snowflake YouTube Channel
  + https://www.youtube.com/channel/UCs10x-muRrTQMJ4Ya-fmIlw
  + https://www.youtube.com/user/snowflakecomputing/videos

- Setting Up Snowflake Elastic Data Warehouse SaaS AWS Marketplace
  + https://www.youtube.com/watch?v=ga3EFKRVht4


## Snowflake Community Resources
- https://community.snowflake.com/s/
- https://twitter.com/SnowflakeDB

- https://community.snowflake.com/s/scripts

- https://community.snowflake.com/s/blog



## Snowflake Data Exchange 
- Demyst Data
  + https://resources.snowflake.com/snowflake/improving-data-analytics-with-demyst-data-and-the-snowflake-data-exchange
    * "An external-data-as-a-service company headquartered in New York. It focuses on data about people, places, and small businesses. Its large team of data strategists constantly identifies and onboards new data providers with over 900 contracted data sets. Demyst Data is also a provider in the Snowflake Data Exchange."
  + [YouTube: Improve Data Analytics with Demyst Data and Snowflake Data Exchange](https://www.youtube.com/watch?v=e_TVw2_CIPk)



## News

### 2015
- [Snowflake Announces General Availability of their Cloud Data Warehouse Offering](https://www.infoq.com/news/2015/07/snowflake-cloud-data-warehouse/)


