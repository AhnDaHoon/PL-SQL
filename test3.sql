DECLARE
	-- ����
	-- ������ �ڷ���
	vno number;
	-- �ʱ�ȭ
	vstr varchar2(20) := 'hong';
BEGIN
	vno := 10;
	DBMS_OUTPUT.PUT_LINE(vno);
	DBMS_OUTPUT.PUT_LINE(vstr);
	-- ���ڿ� ���̱�
	DBMS_OUTPUT.PUT_LINE('vno: ' || vno);
	-- ǥ�� ��� ��ġ�� ���ڿ� 1�� ���
	DBMS_OUTPUT.PUT_LINE('HELLO PL/SQL');

END;
/