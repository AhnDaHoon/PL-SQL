

DECLARE
	-- PL/SQL ���ڵ�
	-- ���ο� Ÿ��(�ڷ����� ����), ����ü, class(mehod�� ���� Ŭ����)
	TYPE PL_REC IS RECORD
	(
		VEMPNO NUMBER(4),
		VENAME VARCHAR2(20),
		VSAL NUMBER(10)
	);
	-- ���� ����
	-- ������ �ڷ���
	PL2 PL_REC; 



BEGIN
	SELECT EMPNO, ENAME, SAL
		INTO PL2
	FROM EMP
	WHERE EMPNO = 7788;		
	
	DBMS_OUTPUT.PUT_LINE(PL2.VEMPNO ||'	'||PL2.VENAME||'		'||PL2.VSAL);
END;
/