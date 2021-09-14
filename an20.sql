

DECLARE
	-- PL/SQL 레코드
	-- 새로운 타입(자료형을 선언), 구조체, class(mehod가 없는 클래스)
	TYPE PL_REC IS RECORD
	(
		VEMPNO NUMBER(4),
		VENAME VARCHAR2(20),
		VSAL NUMBER(10)
	);
	-- 변수 선언
	-- 변수명 자료형
	PL2 PL_REC; 



BEGIN
	SELECT EMPNO, ENAME, SAL
		INTO PL2
	FROM EMP
	WHERE EMPNO = 7788;		
	
	DBMS_OUTPUT.PUT_LINE(PL2.VEMPNO ||'	'||PL2.VENAME||'		'||PL2.VSAL);
END;
/