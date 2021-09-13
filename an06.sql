DECLARE 
	i NUMBER := 1;
BEGIN
	-- WHILE 조건을 참으로 만족할때만 반복
	WHILE i<10 LOOP
		DBMS_OUTPUT.PUT_LINE('3 * ' || i || ' = ' || 3*i);
		i := i + 1;
	END LOOP;
END;
/