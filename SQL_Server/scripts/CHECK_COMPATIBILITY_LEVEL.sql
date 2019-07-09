/*
*
* https://docs.microsoft.com/en-us/sql/relational-databases/databases/view-or-change-the-compatibility-level-of-a-database?view=sql-server-2017
*
*/
SELECT compatibility_level  
FROM sys.databases WHERE name = '{your database name here}';
