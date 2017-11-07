select
	'logistics' 主题域,
  	tables.table_comment 表注释,
	columns.table_name 表英文名称,
	tables.table_comment 表中文名称,
	columns.column_name 列英文名称,
	columns.column_comment 列中文名称,
	columns.column_comment 列注释,
	columns.column_type 数据类型,
	columns.column_key 是否主键,
	columns.is_nullable 是否为空,
	columns.column_default 默认值
from
	(
		select
			table_name,
			table_comment
		from
			information_schema. tables
		where
			-- 此处修改数据库名称 
			table_schema = 'xyzj'
			-- 以下输入表名称
			 AND	
			 table_name  = 'user'
	) tables,
	(
		select
			table_name,
			column_name,
			column_type,
			column_key,
			character_maximum_length,
			is_nullable,
			column_default,
			column_comment
		from
			information_schema. columns
		where
			-- 此处修改数据库名称 
			table_schema = 'xyzj'
			-- 以下输入表名称
			 AND	
			 table_name  = 'user'
	) columns
where
	tables.table_name = columns.table_name;