ACCEPT VNO PROMPT '����Է�:'

DECLARE
	-- ��Į�� ����: VARCHAR2, NUMBER ���

	-- ���� �ڷ���: %TYPE
	-- ������ ���̽��� ����ϴٺ��� �ڷ����� ũ�Ⱑ �ٲ�� ��찡 �ִµ� ���� �ڷ������� �����ϸ� ���ڷ����� ũ�⸸ŭ ũ�⸦ ������ ������ ���߿� �����Ͱ� �ٲ� �ٲ� �ʿ䰡 ��������. 
	VEMPNO EMP.EMPNO%TYPE := &VNO;
	VENAME EMP.ENAME%TYPE;
	VSAL EMP.SAL%TYPE;


BEGIN
	SELECT empno, ename,  sal
		INTO VEMPNO, VENAME, VSAL
	FROM emp
	WHERE empno = VEMPNO;
	DBMS_OUTPUT.PUT_LINE(VEMPNO||'		'||VENAME||'		'||VSAL);
END;
/