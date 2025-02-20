 
DECLARE 
v_length Number(8,2):=&s_length;
v_width NUMBER(8,2):=&width;
area  NUMBER(8,2); 
cost  Number(8,2);
vat NUMBER(8,2);
payble NUMBER(8,2);
CARPER_PER_METER CONSTANT NUMBER(8,2):=12.58;

 BEGIN
 
 area:=v_length*v_width;
 cost:=CARPER_PER_METER*area;
 vat:=cost*0.15;
 payble:=vat+cost;
 
DBMS_OUTPUT.PUT_LINE('The Area is:'||TO_CHAR(area,'099.99'));
DBMS_OUTPUT.PUT_LINE('');
DBMS_OUTPUT.PUT_LINE('The cOST is:'||TRIM(TO_CHAR(cost,'L99,999.99')));
DBMS_OUTPUT.PUT_LINE('VAT @15% is:'||TRIM(TO_CHAR(vat,'L99,999.99')));
DBMS_OUTPUT.PUT_LINE('Amount Payable is:'|| TRIM(TO_CHAR(payble,'L99,999.99')));
 END;
 /
