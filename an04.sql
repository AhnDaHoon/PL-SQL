DECLARE
	vsum NUMBER := 0;
BEGIN
	-- 1���� 100������ ������: 5050
	-- pl/sql�� for���� �ѻ� 1���� ���� �Ѵ�.
	-- for���� �ݴ�� ���� ��Ű���� REVERSE�� for���� �־��ش�, 	FOR i IN REVERSE 1..100 LOOP
	FOR i IN 1..100 LOOP
		vsum := vsum + i;
	END LOOP;

	DBMS_OUTPUT.PUT_LINE('1���� 100������ ������: ' || vsum);
END;
/