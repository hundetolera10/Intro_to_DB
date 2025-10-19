-- task_4.sql
-- Script to print full description of the table 'Books' in 'alx_book_store'

SELECT 
    COLUMN_NAME AS `Column`,
    COLUMN_TYPE AS `Type`,
    IS_NULLABLE AS `Nullable`,
    COLUMN_KEY AS `Key`,
    COLUMN_DEFAULT AS `Default`,
    EXTRA AS `Extra`
FROM 
    INFORMATION_SCHEMA.COLUMNS
WHERE 
    TABLE_SCHEMA = 'alx_book_store'-- This will use the database passed as argument
    AND TABLE_NAME = 'Books';
ORDER BY 
    ORDINAL_POSITION;
    