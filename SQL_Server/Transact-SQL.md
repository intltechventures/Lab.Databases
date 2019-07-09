
# Transact SQL Resources


## SQL Server 2019 References



## SQL Server 2017 References
* https://docs.microsoft.com/en-us/sql/database-engine/sql-server-database-engine-overview?view=sql-server-2017
* https://docs.microsoft.com/en-us/sql/t-sql/language-reference?view=sql-server-2017



## Useful Commands
- Determine Collation:
  + ```SELECT CONVERT (varchar, SERVERPROPERTY('collation'));```
    * Alternatively:  ```EXECUTE sp_helpsort;```
  



## Column Definition Tips
- Initilizing a DEFAULT for a time/date column definition:
  + [Date and Time Data Types and Functions (Transact-SQL)](https://docs.microsoft.com/en-us/sql/t-sql/functions/date-and-time-data-types-and-functions-transact-sql?view=sql-server-2017)
  + To initialize a time/date field - you can specify ```GETDATE()``` for default value (vs. NOW(), e.g. in MySQL or PostgreSQL). For example:
    * ```[DATE_CREATED] datetime NOT NULL DEFAULT GETDATE(),```
    * https://docs.microsoft.com/en-us/sql/t-sql/functions/getdate-transact-sql?view=sql-server-2017
    * NOTE: "Returns the current database system timestamp as a datetime value without the database time zone offset. This value is derived from the operating system of the computer on which the instance of SQL Server is running."
  + To initialize a time/date field - to include the system time zone offset, use ```SYSDATETIMEOFFSET()```
  + To initialize a time/date field - to use UTC time/date, use ```SYSUTCDATETIME```
    

- Assign a GUID/UUID
  + ```NEWID()```
  + [NEWID (Transact-SQL)](https://docs.microsoft.com/en-us/sql/t-sql/functions/newid-transact-sql?view=sql-server-2017)
    * "Creates a unique value of type ```uniqueidentifier```"
    * "```NEWID()``` is compliant with [RFC4122](https://tools.ietf.org/html/rfc4122)."



- Initial a CREATED_DATE column with UTC Date/Time
  + Set initial value with ```GETUTCDATE()```
  + https://docs.microsoft.com/en-us/sql/t-sql/functions/getutcdate-transact-sql?view=sql-server-2017
    * SYSDATETIME and SYSUTCDATETIME have more fractional seconds precision than GETDATE and GETUTCDATE. 
    * SYSDATETIMEOFFSET includes the system time zone offset. SYSDATETIME, SYSUTCDATETIME, and SYSDATETIMEOFFSET can be assigned to a variable of any of the date and time types.
  + https://docs.microsoft.com/en-us/sql/t-sql/functions/date-and-time-data-types-and-functions-transact-sql?view=sql-server-2017
  + https://www.w3schools.com/sql/func_sqlserver_getutcdate.asp
  + Why Use UTC? GETUTCDATE () can be used to store the timestamp that is independent of Time Zones.



