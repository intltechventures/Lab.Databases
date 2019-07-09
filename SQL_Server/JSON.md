
# JSON Data in SQL Server


## SQL Server 2017 Documentation, re: JSON
- [JSON data in SQL Server 2017](https://docs.microsoft.com/en-us/sql/relational-databases/json/json-data-sql-server?view=sql-server-2017)
  + "If you must create a query or report on JSON data, you can easily convert JSON data to rows and columns by calling the OPENJSON rowset function. For more information, see Convert JSON Data to Rows and Columns with OPENJSON (SQL Server)."
    * ```DECLARE @jsonVariable NVARCHAR(MAX)```



## JSON Column Definition

- [Store JSON documents in SQL Server or SQL Database](https://docs.microsoft.com/en-us/sql/relational-databases/json/store-json-documents-in-sql-tables?view=sql-server-2017)
  + Store JSON data in columns defined as ```nvarchar(max)```
  + Example:
    * ```create table WebSite.Logs (```
    * ```   _id bigint primary key identity,```
    * ```   log nvarchar(max)```
    * ```);```

  + "If you want to be sure that valid JSON is saved in the log column, you can add a CHECK constraint on the column"
    * Example:
      * ```ALTER TABLE WebSite.Logs```
      *       ```ADD CONSTRAINT [Log record should be formatted as JSON]```
      *              ```CHECK (ISJSON(log)=1)```


## Builtin JSON Functions (TO-DO: Add descriptions, examples, links to documentation)

- ```ISJSON```

- ```JSON_VALUE```

- ```JSON_QUERY```

- ```JSON_MODIFY```

- ```OPENJSON```
  * https://docs.microsoft.com/en-us/sql/t-sql/functions/openjson-transact-sql?view=sql-server-2017

- ```FOR JSON```




## Notes:
- VARCHAR(x) or NVARCHAR(x)?
  + https://stackoverflow.com/questions/9207404/whats-best-sql-datatype-for-storing-json-string
    * "VARCHAR stores non-Unicode strings (1 byte per character)"
    * "NVARCHAR stores everything in a 2-byte-per-character Unicode mode."
    * (TO-DO: find MS SQL Server source docs to cite for this)



## Suggested Books
- [SQL Server Advanced Data Types: JSON, XML, and Beyond Paperback – August 24, 2018, by Peter A. Carter](https://www.amazon.com/SQL-Server-Advanced-Data-Types/dp/1484239008)



## Possibly Useful Articles
- 2019 

- 2018
  + https://www.ssa-data.com/blog/archive/sql-server-2017-json/


- 2017
  + http://www.sqlserver.info/data-formatting/sql-server-data-types-to-json-data-types/
  + http://www.sqlserver.info/syntax/json-in-sql-server/
  + https://www.c-sharpcorner.com/article/working-with-json-in-sql-server-2016/
  + https://www.sqlshack.com/native-json-support-in-sql-server-2016/


- 2015 
  + https://sqlhints.com/tag/json-in-sql-server/
    * "This article explains the strategy for Indexing JSON value in Sql Server 2016 with examples, as we don’t have any special indexes like the XML indexes which we had for the XML value stored in the XML data type column."\
  + https://sqlhints.com/2015/11/15/lax-and-strict-json-path-modes-in-sql-server-2016/





