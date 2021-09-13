-- 실행
-- 사번입력: 7788
-- 사원번호, 이름, 직업, 연봉을 출력

ACCEPT VNO PROMPT '사번입력:'

DECLARE
	VEMPNO NUMBER;
	VENAME VARCHAR2(20);
	VJOB VARCHAR2(20);
	VSAL NUMBER;


BEGIN
	SELECT empno, ename, job, sal*12 sal
		INTO VEMPNO, VENAME, VJOB, VSAL
	FROM emp
	WHERE empno = &VNO;
	DBMS_OUTPUT.PUT_LINE('사원번호		이름		job		연봉');
	DBMS_OUTPUT.PUT_LINE('-----		-----	---------	-----');
	DBMS_OUTPUT.PUT_LINE(VEMPNO||'		'||VENAME||'	'||VJOB||'		'||VSAL);
END;
/