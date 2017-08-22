#!/bin/bash
user=root
pass='mychebao@123'
for host in `cat ip.txt`
do
    expect -c "
    spawn  ssh-copy-id $user@$host
    expect {
        \"(yes/no)\" {send \"yes\r\"; exp_continue}
        \"password:\" {send \"$pass\r\";exp_continue}
    }"
done
