! ======== FIREWALL 1 ======== !  
en
conf t

interface Gi1/1
ip address 10.43.231.253 255.255.255.252
no shutdown
exit

interface Gi1/2 
ip address 10.43.232.253 255.255.255.252
no shutdown
exit

interface Gi1/3 
ip address 10.43.221.254 255.255.255.252
no shutdown
exit

interface Gi1/4 
ip address 10.43.223.254 255.255.255.252
no shutdown
exit

! ======== FIREWALL 2 ======== !  
en
conf t

interface Gi1/1
ip address 10.43.233.253 255.255.255.252
no shutdown
exit

interface Gi1/2 
ip address 10.43.234.253 255.255.255.252
no shutdown
exit

interface Gi1/3 
ip address 10.43.222.254 255.255.255.252
no shutdown
exit

interface Gi1/4 
ip address 10.43.224.254 255.255.255.252
no shutdown
exit

