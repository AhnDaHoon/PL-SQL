DECLARE
	vno NUMBER := 1;
BEGIN
	-- �ȳ��ϼ��� pl/sql �׽�Ʈ �ڵ��Դϴ�. 1
	-- �ȳ��ϼ��� pl/sql �׽�Ʈ �ڵ��Դϴ�. 2
	-- �ȳ��ϼ��� pl/sql �׽�Ʈ �ڵ��Դϴ�. 3
	DBMS_OUTPUT.PUT_LINE('�ȳ��ϼ��� pl/sql �׽�Ʈ �ڵ��Դϴ�. ' || vno);
	vno := vno + 1;
	DBMS_OUTPUT.PUT_LINE('�ȳ��ϼ��� pl/sql �׽�Ʈ �ڵ��Դϴ�. ' || vno);
	vno := vno + 1;
	DBMS_OUTPUT.PUT_LINE('�ȳ��ϼ��� pl/sql �׽�Ʈ �ڵ��Դϴ�. ' || vno);

END;
/