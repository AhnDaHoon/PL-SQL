DECLARE
	CURSOR C1(VNO NUMBER) IS
		SELECT EMPNO, ENAME, SAL
		FROM EMP
		WHERE DEPTNO = VNO;

	
	C2 C1%ROWTYPE;

BEGIN
	
	-- FOR �� + CURSOR ���� -> CURSOR FOR LOOP
	-- FOR ������ IN Ŀ���� LOOP

	-- ������ �����ϰ� ����ϴ� CURSOR FOR�� 
	-- FOR C2 IN C10 LOOP

	-- ������ �������� �ʰ� �ٷ� ��밡���� CURSOR FOR��
	FOR i IN 1..3 LOOP
		FOR C2 IN C1(i*10) LOOP
			
	-- OPEN C1;
	-- FETCH C1 INTO C2;
			DBMS_OUTPUT.PUT_LINE(C2.EMPNO||'		'||C2.ENAME||'		'||C2.SAL);
		END LOOP;
	END LOOP;

	-- CLOSE C1;
	
END;
/