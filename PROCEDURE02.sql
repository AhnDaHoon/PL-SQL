CREATE OR REPLACE PROCEDURE DOWN_SAL (VEMPNO EMP.EMPNO%TYPE, VRATIO NUMBER)

IS

BEGIN
	UPDATE EMP
	SET SAL = SAL*(1-VRATIO/100)
	WHERE EMPNO = VEMPNO;

END;
/

