DECLARE
	-- 변수
	-- 변수명 자료형
	vno number;
	-- 초기화
	vstr varchar2(20) := 'hong';
BEGIN
	vno := 10;
	DBMS_OUTPUT.PUT_LINE(vno);
	DBMS_OUTPUT.PUT_LINE(vstr);
	-- 문자열 붙이기
	DBMS_OUTPUT.PUT_LINE('vno: ' || vno);
	-- 표준 출력 장치에 문자열 1줄 출력
	DBMS_OUTPUT.PUT_LINE('HELLO PL/SQL');

END;
/