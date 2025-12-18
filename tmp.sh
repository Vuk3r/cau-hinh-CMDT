ip domain-name vku.domain
username admin password 123
crypto key generate rsa
1024
line vty 0 4
login local
transport input ssh
end
wr
 






