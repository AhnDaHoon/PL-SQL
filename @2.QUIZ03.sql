ACCEPT VNO PROMPT '�μ���ȣ: :'



DECLARE
	CURSOR C1 IS
	SELECT ENAME, JOB, SAL, COMM
	FROM EMP
	WHERE DEPTNO = &VNO;

	C2 C1%ROWTYPE;

BEGIN

	FOR C2 IN C1 LOOP
		INSERT INTO BONUS
		VALUES(C2.ENAME, C2.JOB, C2.SAL, C2.COMM);
	END LOOP;
END;
/