
# SQL Server CTE Resources


## References
- [WITH common_table_expression (Transact-SQL)](https://docs.microsoft.com/en-us/sql/t-sql/queries/with-common-table-expression-transact-sql?view=sql-server-ver15)
  + "Specifies a temporary named result set, known as a common table expression (CTE). This is derived from a simple query and defined within the execution scope of a single SELECT, INSERT, UPDATE, DELETE or MERGE statement. This clause can also be used in a CREATE VIEW statement as part of its defining SELECT statement. A common table expression can include references to itself. This is referred to as a recursive common table expression."


## Tutortials & Examples 
- https://www.essentialsql.com/introduction-common-table-expressions-ctes/

- https://www.geeksforgeeks.org/cte-in-sql/
  + "The Common Table Expressions (CTE) were introduced into standard SQL in order to simplify various classes of SQL Queries for which a derived table was just unsuitable. CTE was introduced in SQL Server 2005, the common table expression (CTE) is a temporary named result set that you can reference within a SELECT, INSERT, UPDATE, or DELETE statement. You can also use a CTE in a CREATE a view, as part of the view’s SELECT query. In addition, as of SQL Server 2008, you can add a CTE to the new MERGE statement."

- https://www.mssqltips.com/sqlservertip/5379/sql-server-common-table-expressions-cte-usage-and-examples/
  + "Many organizations have some type of hierarchy for business processes. When it comes to large organizations, the hierarchy can get very complex and large, so building a hierarchy in a RDBMS is a tedious task. We have to create views, cursors and so on, but using a CTE in SQL Server is a better solution to retrieve hierarchy-based data"

- https://www.tutorialgateway.org/sql-server-cte/

- https://www.sqlshack.com/sql-server-common-table-expressions-cte/

- Brent Ozar: 
  + [What’s Better, CTEs or Temp Tables?](https://www.brentozar.com/archive/2019/06/whats-better-ctes-or-temp-tables/)


## Stackoverflow 
- https://stackoverflow.com/questions/4740748/when-to-use-common-table-expression-cte
  + https://docs.microsoft.com/en-us/previous-versions/sql/sql-server-2008-r2/ms186243(v=sql.105)
  + https://docs.microsoft.com/en-us/previous-versions/sql/sql-server-2008-r2/ms190766(v=sql.105)
