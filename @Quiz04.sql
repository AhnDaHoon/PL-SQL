--����ڷκ��� �¾ �⵵ 4�ڸ��� �Է¹޾� � �������� ����ϼ��� 
--�¾�����Է�:2021
--2021����� ����� �Ҷ� 


ACCEPT VINPUT PROMPT '�¾ �⵵�� �Է��ϼ��� : '
DECLARE
	INPUT NUMBER := &VINPUT;
BEGIN
	
	IF MOD(INPUT, 12) = 0 THEN
		DBMS_OUTPUT.PUT_LINE(INPUT||'����� ����� �����̶�');
	ELSIF MOD(INPUT, 12) = 1 THEN
		DBMS_OUTPUT.PUT_LINE(INPUT||'����� ����� �߶�');
	ELSIF MOD(INPUT, 12) = 2 THEN
		DBMS_OUTPUT.PUT_LINE(INPUT||'����� ����� ����');
	ELSIF MOD(INPUT, 12) = 3 THEN
		DBMS_OUTPUT.PUT_LINE(INPUT||'����� ����� ������');
	ELSIF MOD(INPUT, 12) = 4 THEN
		DBMS_OUTPUT.PUT_LINE(INPUT||'����� ����� ���');
	ELSIF MOD(INPUT, 12) = 5 THEN
		DBMS_OUTPUT.PUT_LINE(INPUT||'����� ����� �Ҷ�');
	ELSIF MOD(INPUT, 12) = 6 THEN
		DBMS_OUTPUT.PUT_LINE(INPUT||'����� ����� ȣ���̶�');
	ELSIF MOD(INPUT, 12) = 7 THEN
		DBMS_OUTPUT.PUT_LINE(INPUT||'����� ����� �䳢��');
	ELSIF MOD(INPUT, 12) = 8 THEN
		DBMS_OUTPUT.PUT_LINE(INPUT||'����� ����� ���');
	ELSIF MOD(INPUT, 12) = 9 THEN
		DBMS_OUTPUT.PUT_LINE(INPUT||'����� ����� ���');
	ELSIF MOD(INPUT, 12) = 10 THEN
		DBMS_OUTPUT.PUT_LINE(INPUT||'����� ����� ����');
	ELSIF MOD(INPUT, 12) = 11 THEN
		DBMS_OUTPUT.PUT_LINE(INPUT||'����� ����� ���');
	END IF;
END;
/