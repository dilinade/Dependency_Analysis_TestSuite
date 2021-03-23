file a.out
set remotetimeout 6
target remote | vgdb --wait=5
set pagination off
set logging file gdb.txt
set logging on
awatch result
set $i=0
commands 
set $i++
printf "count|%d\n", $i
cont
end
cont
