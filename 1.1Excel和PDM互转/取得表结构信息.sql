SELECT
	TABLE_NAME ������,
	COLUMN_NAME ����,
	DATA_TYPE �ֶ�����,
	COLUMN_TYPE ���ݳ���,
	CHARACTER_MAXIMUM_LENGTH ����,
	IS_NULLABLE �Ƿ�Ϊ��,
	COLUMN_DEFAULT Ĭ��ֵ,
	COLUMN_COMMENT ��ע
FROM
	INFORMATION_SCHEMA. COLUMNS
WHERE
	table_schema = 'zdtest';

-- AND
-- table_name  = 'article'
-- articleΪ��������ʱ�򻻳���Ҫ�����ı������