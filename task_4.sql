SELECT
    COLUMN_NAME AS 'Column_name',
    COLUMN_TYPE AS 'Column_type',
    IS_NULLABLE AS 'Is_nullable',
    COLUMN_KEY AS 'Key',
    COLUMN_DEFAULT AS 'Default',
    EXTRA AS 'Extra'
FROM
    INFORMATION_SCHEMA.COLUMNS
WHERE
    TABLE_SCHEMA = 'alx_book_store'
    AND TABLE_NAME = 'books';
