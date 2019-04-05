
# MariaDB Support for JSON

## References
- https://mariadb.com/kb/en/library/json-data-type/
  + "JSON is an alias for LONGTEXT introduced for compatibility reasons with MySQL's JSON data type. MariaDB implements this as a LONGTEXT rather, as the JSON data type contradicts the SQL standard, and MariaDB's benchmarks indicate that performance is at least equivalent."
  + "In order to ensure that a a valid json document is inserted, the JSON_VALID function can be used as a CHECK constraint."
  + Example: 
    * ```CREATE TABLE t (j JSON);```
  + Example, with JSON Check Constraint:
    * ``` CREATE TABLE t2 (```
    * ```   j JSON ```
    * ```   CHECK (JSON_VALID(j))```
    * ```   );```
  + "In MySQL, JSON is an object and is compared according to json values. In MariaDB JSON strings are normal strings and compared as strings. One exception is when using JSON_EXTRACT() in which case strings are unescaped before comparison."


