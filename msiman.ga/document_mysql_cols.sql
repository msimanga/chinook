SELECT
	table_schema
	,table_name
	,column_name
	,concat( 'Validation :', IF(is_nullable='NO', 'Not required: ', 'Required: ') , '\r\n'
				,'Data type :', upper(data_type) , '\r\n'
				,'Max Length :', IFNULL(character_maximum_length, 'NA'), '\r\n'
				,'Description : ', COLUMN_COMMENT 
				) as db_col_descr
FROM
	INFORMATION_SCHEMA.`COLUMNS`
WHERE
	TABLE_SCHEMA = 'Chinook'