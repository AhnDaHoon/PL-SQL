BEGIN
	-- ������ 3�� ���
	FOR i IN 1..9 LOOP
		DBMS_OUTPUT.PUT_LINE('3 * '|| i || ' = ' || 3*i);
	END LOOP;
END;
/