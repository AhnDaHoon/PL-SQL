DECLARE 
	i NUMBER := 1;
BEGIN
	-- WHILE ������ ������ �����Ҷ��� �ݺ�
	WHILE i<10 LOOP
		DBMS_OUTPUT.PUT_LINE('3 * ' || i || ' = ' || 3*i);
		i := i + 1;
	END LOOP;
END;
/