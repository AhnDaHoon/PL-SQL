-- 1. 1���� 10������ ������ ����
-- 2. �� ����(1,7,3)�߿� �ϳ���� �޿��� VRATIO ������ŭ �λ�
-- 3. �� ����(2,4,8)�߿� �ϳ���� �޿��� VRATIO ������ŭ �谨
-- ������ �޼����� ���

CREATE OR REPLACE PROCEDURE LOTTO_SAL (VEMPNO EMP.EMPNO%TYPE, VRATIO NUMBER)

IS
	NUM  NUMBER := 0;

BEGIN

	NUM := ROUND(DBMS_RANDOM.VALUE(1,10));

	IF  NUM = 1 OR NUM = 3 OR NUM = 7 THEN
		RAISE_SAL(VEMPNO, VRATIO);
		DBMS_OUTPUT.PUT_LINE('�޿����');

	ELSIF NUM = 2 OR NUM = 4 OR NUM = 8 THEN
		DOWN_SAL(VEMPNO, VRATIO);
		DBMS_OUTPUT.PUT_LINE('�޿��϶�');
	ELSE 
		DBMS_OUTPUT.PUT_LINE('��');
	END IF;

END;