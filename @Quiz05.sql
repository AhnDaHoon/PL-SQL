--����ڷκ���  �����ȣ�� �Է¹޾� �� ����� � �μ����� �ٹ��ϴ��� �μ���� ��ġ�� ��� (��Ʈ : SUBQUERY  OR JOIN) 
--�����ȣ : 7788
--�μ���     �μ���ġ
---------- ----------
--RESEARCH DALLAS
ACCEPT VNO PROMPT '����Է�:'

DECLARE
	VEMPNO EMP.EMPNO%TYPE := &VNO;
	VDNAME DEPT.DNAME%TYPE;
	VLOC DEPT.LOC%TYPE;


BEGIN
	SELECT D.DNAME, D.LOC
		INTO VDNAME, VLOC
	FROM DEPT D, EMP E
	WHERE E.DEPTNO = D.DEPTNO AND E.EMPNO = VEMPNO;
	DBMS_OUTPUT.PUT_LINE(VDNAME ||'		'|| VLOC);
END;
/



