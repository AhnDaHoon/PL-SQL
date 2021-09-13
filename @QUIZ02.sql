--구구단 2단 부터 5단까지 출력

BEGIN
	FOR i IN 2..5 LOOP
		FOR J IN  1..9 LOOP
			DBMS_OUTPUT.PUT_LINE(''I * J);
		END LOOP;
	END LOOP;
END;
/



