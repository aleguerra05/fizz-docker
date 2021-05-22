su -p oracle -c "sqlplus / as sysdba << EOF
Select 
CASE WHEN MOD(Rownum,15)=0 then 'fizzbuzz' 
else CASE WHEN MOD(Rownum,3)=0 then 'fizz' 
else CASE WHEN MOD(Rownum,3)=0 then 'buzz' 
else Rownum||'' end end end fizzbuzz
From dual
Connect By Rownum <= 100;
exit;
EOF"