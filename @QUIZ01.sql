-- 1���� 100���� Ȧ���� ������ : xxxx  �Դϴ�. 
DECLARE
	num NUMBER := 0;

BEGIN
	FOR i IN 1..100 LOOP
		num := num + i;
	END LOOP;
	DBMS_OUTPUT.PUT_LINE('1���� 100������ ������: ' ||num);
END;
/


