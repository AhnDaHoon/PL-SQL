-- 1���� 100������ �� �߿��� 3�� ����� ������ ���
DECLARE
	VSUM NUMBER := 0;
BEGIN
	FOR i IN 1..100 LOOP
		IF MOD(i,3) = 0 THEN
			VSUM := VSUM + i;

		END IF;
	END LOOP;
	DBMS_OUTPUT.PUT_LINE('1���� 100������ ���߿��� 3�� ����� ������: ' || VSUM);
END;
/