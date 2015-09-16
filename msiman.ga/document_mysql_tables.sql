SELECT
	table_schema
	,table_name
	,table_type
	,table_rows
	,create_time
	,update_time
	,table_comment
	,CONCAT
	(
	'Created : ', create_time, '\r\n'
	,'Description : ',table_comment
	) as db_descr
FROM
	`tables`
WHERE
	TABLE_SCHEMA = 'Chinook'
	AND table_type = 'BASE TABLE'