DECLARE
	-- ���� Ÿ���� ���ӵ� ������ �Ҵ�Ǵ� ����
	-- PL/SQL�� �迭�� PL/SQL ���̺��̶����. PL_SQL TABLE: PL_TAB
	-- TYPE PL_TAB IS TABLE OF �ڷ���

	TYPE PL_TAB IS TABLE OF EMP.ENAME%TYPE
	INDEX BY BINARY_INTEGER;

	-- String[] pl1 = new Stirng[10];

	PL1 PL_TAB;


BEGIN
	FOR i IN 1..20 LOOP
		PL1(I) := 'SCOTT' || i;
	END LOOP;

	FOR j IN 1..20 LOOP
		DBMS_OUTPUT.PUT_LINE(PL1(j));
	END LOOP;
END;
/