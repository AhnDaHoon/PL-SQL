DECLARE
	vsum NUMBER := 0;
BEGIN
	-- 1부터 100까지의 누적합: 5050
	-- pl/sql의 for문은 한상 1씩만 증가 한다.
	-- for문을 반대로 실행 시키려면 REVERSE를 for문에 넣어준다, 	FOR i IN REVERSE 1..100 LOOP
	FOR i IN 1..100 LOOP
		vsum := vsum + i;
	END LOOP;

	DBMS_OUTPUT.PUT_LINE('1부터 100까지의 누적합: ' || vsum);
END;
/