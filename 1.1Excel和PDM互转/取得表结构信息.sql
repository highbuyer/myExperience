select
	'logistics' ������,
  	tables.table_comment ��ע��,
	columns.table_name ��Ӣ������,
	tables.table_comment ����������,
	columns.column_name ��Ӣ������,
	columns.column_comment ����������,
	columns.column_comment ��ע��,
	columns.column_type ��������,
	columns.column_key �Ƿ�����,
	columns.is_nullable �Ƿ�Ϊ��,
	columns.column_default Ĭ��ֵ
from
	(
		select
			table_name,
			table_comment
		from
			information_schema. tables
		where
			-- �˴��޸����ݿ����� 
			table_schema = 'xyzj'
			-- �������������
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
			-- �˴��޸����ݿ����� 
			table_schema = 'xyzj'
			-- �������������
			 AND	
			 table_name  = 'user'
	) columns
where
	tables.table_name = columns.table_name;