ACCEPT VNO PROMPT '검색할 사번 입력'
DECLARE
	VEMPNO NUMBER;
	VENAME VARCHAR2(20);
	VSAL NUMBER;
	VCOMM NUMBER;

BEGIN
	-- SQL 문장을 사용
	-- 7788번 사원의 사번, 이름, 급여 출력
	SELECT empno, ename, sal
		INTO VEMPNO, VENAME, VSAL
	FROM emp
	WHERE empno = &VNO;

	-- DB로 부터 가져온 값을 변수에 담아서 로직을 처리
	DBMS_OUTPUT.PUT_LINE('사원번호: ' || VEMPNO);
	DBMS_OUTPUT.PUT_LINE('사원명: ' || VENAME);
	DBMS_OUTPUT.PUT_LINE('급여: ' || VSAL);
END;
/