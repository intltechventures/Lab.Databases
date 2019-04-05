/* ---------------------------------------------------------------------------------------------------------------------------------------- */
/* How to get the equivalent information of a SQL DESC on a table definition/details, in SQL Server                                         */
/*                                                                                                                                          */
/* sources:                                                                                                                                 */
/*    https://stackoverflow.com/questions/2418527/sql-server-query-to-get-the-list-of-columns-in-a-table-along-with-data-types-no           */
/*    https://stackoverflow.com/questions/319354/what-is-the-equivalent-of-describe-table-in-sql-server                                     */
/* ---------------------------------------------------------------------------------------------------------------------------------------- */

DECLARE @MyTable VARCHAR(50);
SET @MyTable = 'VPT_NEXTGEN_ASSESSMENT_DEFINITION';

/* ---------------------------------------------------------------------------------------------------------------------------------------- */
/* Option #1                                                                                                                                */
/* ---------------------------------------------------------------------------------------------------------------------------------------- */
SELECT 
    c.name 'Column Name',
    t.Name 'Data type',
    c.max_length 'Max Length',
    c.precision ,
    c.scale ,
    c.is_nullable,
    ISNULL(i.is_primary_key, 0) 'Primary Key'
FROM    
    sys.columns c
INNER JOIN 
    sys.types t ON c.user_type_id = t.user_type_id
LEFT OUTER JOIN 
    sys.index_columns ic ON ic.object_id = c.object_id AND ic.column_id = c.column_id
LEFT OUTER JOIN 
    sys.indexes i ON ic.object_id = i.object_id AND ic.index_id = i.index_id
WHERE c.object_id = OBJECT_ID('@MyTable');


/* ---------------------------------------------------------------------------------------------------------------------------------------- */
/* Option #2                                                                                                                                */
/* -----------------------------------------------------------------------------------------------------------------------------------------*/
EXEC sp_columns @MyTable;



/* ---------------------------------------------------------------------------------------------------------------------------------------- */
/* Option #3                                                                                                                                */
/* -----------------------------------------------------------------------------------------------------------------------------------------*/
EXEC sp_help @MyTable;


