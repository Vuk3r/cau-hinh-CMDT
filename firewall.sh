! ======== FIREWALL 1 ======== !  
en
conf t

interface Gi1/1
nameif FW1-EDGE1
ip address 10.43.231.253 255.255.255.252
no shutdown
exit

interface Gi1/2 
nameif FW1-EDGE2
ip address 10.43.232.253 255.255.255.252
no shutdown
exit

interface Gi1/3
nameif FW1-CORE1
security-level 50
ip address 10.43.221.254 255.255.255.252
no shutdown
exit

interface Gi1/4
nameif FW1-CORE2
security-level 50
ip address 10.43.223.254 255.255.255.252
no shutdown
exit

router ospf 1
router-id 231.231.231.231
network 10.43.231.252 255.255.255.252 area 0
network 10.43.232.252 255.255.255.252 area 0
network 10.43.221.252 255.255.255.252 area 0
network 10.43.223.252 255.255.255.252 area 0

!!!! FIX KHI CAU HINH HSRP !!!!
ip route 10.43.0.0 255.255.0.0 10.43.221.253


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

