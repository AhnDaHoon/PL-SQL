ACCEPT VNO PROMPT '�˻��� ��� �Է�'
DECLARE
	VEMPNO NUMBER;
	VENAME VARCHAR2(20);
	VSAL NUMBER;
	VCOMM NUMBER;

BEGIN
	-- SQL ������ ���
	-- 7788�� ����� ���, �̸�, �޿� ���
	SELECT empno, ename, sal
		INTO VEMPNO, VENAME, VSAL
	FROM emp
	WHERE empno = &VNO;

	-- DB�� ���� ������ ���� ������ ��Ƽ� ������ ó��
	DBMS_OUTPUT.PUT_LINE('�����ȣ: ' || VEMPNO);
	DBMS_OUTPUT.PUT_LINE('�����: ' || VENAME);
	DBMS_OUTPUT.PUT_LINE('�޿�: ' || VSAL);
END;
/