--�����ȣ�� �Է��ϸ� �ش� ����� �޿��� 30% Ȯ����  20%�谨�����ش� 
--�̶� ��� , �̸� , �޿�, �μ���ȣ�� ����ϴ� PL/SQL �ڵ带 �ۼ��ϼ��� 
--SQL> -- @D:\dev\PLSQL\QUIZ07.sql
--SQL> -- ��� ��ȣ  : 7788
--�Ф�! �޿��� 20% �谨�Ǿ����ϴ�. 

ACCEPT VNO PROMPT '�����ȣ :'

DECLARE
	V NUMBER;

	CURSOR C1 IS
	SELECT EMPNO, ENAME, SAL, DEPTNO
	FROM EMP
	WHERE EMPNO = &VNO;

	C2 C1%ROWTYPE;

BEGIN
	FOR C2 IN C1 LOOP

		V := ROUND(DBMS_RANDOM.VALUE(1,10));
		DBMS_OUTPUT.PUT_LINE(V);
		IF V <= 3 THEN
			UPDATE EMP
			SET SAL = SAL*0.8
			WHERE EMPNO = C2.EMPNO;
			DBMS_OUTPUT.PUT_LINE('�Ф�! �޿��� 20% �谨�Ǿ����ϴ�. ');

		ELSE
			DBMS_OUTPUT.PUT_LINE('��! ������ ���׿� ');

		END IF;
	END LOOP;

	FOR C2 IN C1 LOOP
		DBMS_OUTPUT.PUT_LINE(C2.EMPNO||'		'||C2.ENAME||'		'||C2.SAL||'		'||C2.DEPTNO);
	END LOOP;
END;
