-- 1부터 100까지 홀수의 누적합 : xxxx  입니다. 
DECLARE
	num NUMBER := 0;

BEGIN
	FOR i IN 1..100 LOOP
		num := num + i;
	END LOOP;
	DBMS_OUTPUT.PUT_LINE('1부터 100까지의 누적합: ' ||num);
END;
/


