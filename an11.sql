-- ����
-- ����Է�: 7788
-- �����ȣ, �̸�, ����, ������ ���

ACCEPT VNO PROMPT '����Է�:'

DECLARE
	VEMPNO NUMBER;
	VENAME VARCHAR2(20);
	VJOB VARCHAR2(20);
	VSAL NUMBER;


BEGIN
	SELECT empno, ename, job, sal*12 sal
		INTO VEMPNO, VENAME, VJOB, VSAL
	FROM emp
	WHERE empno = &VNO;
	DBMS_OUTPUT.PUT_LINE('�����ȣ		�̸�		job		����');
	DBMS_OUTPUT.PUT_LINE('-----		-----	---------	-----');
	DBMS_OUTPUT.PUT_LINE(VEMPNO||'		'||VENAME||'	'||VJOB||'		'||VSAL);
END;
/