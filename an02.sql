DECLARE
	vno NUMBER := 1;
BEGIN
	-- 안녕하세요 pl/sql 테스트 코드입니다. 1
	-- 안녕하세요 pl/sql 테스트 코드입니다. 2
	-- 안녕하세요 pl/sql 테스트 코드입니다. 3
	DBMS_OUTPUT.PUT_LINE('안녕하세요 pl/sql 테스트 코드입니다. ' || vno);
	vno := vno + 1;
	DBMS_OUTPUT.PUT_LINE('안녕하세요 pl/sql 테스트 코드입니다. ' || vno);
	vno := vno + 1;
	DBMS_OUTPUT.PUT_LINE('안녕하세요 pl/sql 테스트 코드입니다. ' || vno);

END;
/