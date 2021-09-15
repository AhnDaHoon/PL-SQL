-- SELECT EMPNO, ENAME, JOB, SAL, ADJ_SAL(EMPNO, 20)
-- �� ��޴� ���� ������ �� ��޴� (1000) + �޿��� N%
-- ������ �޿��� �����ϴ� ADJ_SAL �Լ��� �ۼ��ϼ���

-- 1. ��޴� ���޼����� 100  EX) 5����� 500�߰�
-- 2. �ι�°�� ���� 20���� �־��ٸ� ���� �޿��� 20% EX) �޿��� 3000��;���� 20% : 600

-- 3. ���ϰ��� ���� + ���޼��� + �λ��
-- 3. 3000 + 300 + 600 ==> 3900


CREATE OR REPLACE FUNCTION ADJ_SAL(VEMPNO EMP.EMPNO%TYPE, UPSAL NUMBER)
	RETURN  NUMBER
IS
	VSAL NUMBER := 0;
	VGRADE NUMBER := 0;
BEGIN



	SELECT  E.SAL, S.GRADE*100
		INTO VSAL, VGRADE 
	FROM EMP E, SALGRADE S
	WHERE E.EMPNO = VEMPNO AND E.SAL BETWEEN S.LOSAL AND S.HISAL;

	RETURN VSAL + VSAL*(UPSAL/100) + VGRADE;


END;
/
