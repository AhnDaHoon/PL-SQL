-- 1부터 100사이의 수 중에서 3의 배수의 누적합 출력
DECLARE
	VSUM NUMBER := 0;
BEGIN
	FOR i IN 1..100 LOOP
		IF MOD(i,3) = 0 THEN
			VSUM := VSUM + i;

		END IF;
	END LOOP;
	DBMS_OUTPUT.PUT_LINE('1부터 100사이의 수중에서 3의 배수의 누적합: ' || VSUM);
END;
/