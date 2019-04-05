
# JSON Data in SQL Server


## SQL Server 2017 Documentation, re: JSON
- [JSON data in SQL Server 2017](https://docs.microsoft.com/en-us/sql/relational-databases/json/json-data-sql-server?view=sql-server-2017)
  + "If you must create a query or report on JSON data, you can easily convert JSON data to rows and columns by calling the OPENJSON rowset function. For more information, see Convert JSON Data to Rows and Columns with OPENJSON (SQL Server)."
    * ```DECLARE @jsonVariable NVARCHAR(MAX)```
- [Store JSON documents in SQL Server or SQL Database](https://docs.microsoft.com/en-us/sql/relational-databases/json/store-json-documents-in-sql-tables?view=sql-server-2017)
      * ```create table WebSite.Logs (```
      * ```   _id bigint primary key identity,```
      * ```   log nvarchar(max)```
      * ```);```


## Notes:
- VARCHAR(x) or NVARCHAR(x)?
  + https://stackoverflow.com/questions/9207404/whats-best-sql-datatype-for-storing-json-string
    * "VARCHAR stores non-Unicode strings (1 byte per character)"
    * "NVARCHAR stores everything in a 2-byte-per-character Unicode mode."
    * (TO-DO: find MS SQL Server source docs to cite for this)


