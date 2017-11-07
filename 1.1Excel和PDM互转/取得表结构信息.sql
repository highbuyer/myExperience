SELECT
	TABLE_NAME 表名称,
	COLUMN_NAME 列名,
	DATA_TYPE 字段类型,
	COLUMN_TYPE 数据长度,
	CHARACTER_MAXIMUM_LENGTH 长度,
	IS_NULLABLE 是否为空,
	COLUMN_DEFAULT 默认值,
	COLUMN_COMMENT 备注
FROM
	INFORMATION_SCHEMA. COLUMNS
WHERE
	table_schema = 'zdtest';

-- AND
-- table_name  = 'article'
-- article为表名，到时候换成你要导出的表的名称