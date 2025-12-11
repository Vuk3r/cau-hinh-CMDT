
! =============== Distribute Tang 4 =============== !
!swl3-1
en
conf t
ip routing

vlan 41
name VLAN41-letan
vlan 42
name VLAN42-anninh
vlan 43
name VLAN43-kho
vlan 51
name VLAN51-hanhchinh
vlan 52
name VLAN52-ketoan
vlan 53
name VLAN53-phapche
vlan 61
name VLAN61-sales 
vlan 62
name VLAN62-mkt
vlan 63
name VLAN61-studio


interface vlan 41
ip address 10.43.48.1 255.255.255.0
no shutdown

interface vlan 42
ip address 10.43.49.1 255.255.255.0
no shutdown

interface vlan 43
ip address 10.43.50.1 255.255.255.0
no shutdown

interface vlan 51
ip address 10.43.56.1 255.255.255.0
no shutdown

interface vlan 52
ip address 10.43.57.1 255.255.255.0
no shutdown

interface vlan 53
ip address 10.43.58.1 255.255.255.0
no shutdown

interface vlan 61
ip address 10.43.64.1 255.255.255.0
no shutdown

interface vlan 62
ip address 10.43.65.1 255.255.255.0
no shutdown

interface vlan 63
ip address 10.43.66.1 255.255.255.0
no shutdown

!trunk
interface fa0/3
switchport trunk encapsulation dot1q
switchport mode trunk

switchport trunk allowed vlan 41,42,43
no shutdown
!trunk
interface fa0/4
switchport trunk encapsulation dot1q
switchport mode trunk
switchport trunk allowed vlan 51,52,53
no shutdown
!trunk
interface fa0/5
switchport trunk encapsulation dot1q
switchport mode trunk
switchport trunk allowed vlan 61,62,63
no shutdown

!routing 
interface fa0/1
no switchport
ip address 10.43.207.253 255.255.255.252
no shutdown
!routing 
ip routing
interface fa0/2
no switchport
ip address 10.43.208.253 255.255.255.252
no shutdown

router ospf 1
! toan bo mang o tang 4 -> 6 - them vao de day cho router - mo rong wildcard de khong phai khai bao dai dong
! full vlan tang 4
network 10.43.48.0 0.0.3.255 area 0   
! full vlan tang 5
network 10.43.56.0 0.0.3.255 area 0   
! full vlan tang 6
network 10.43.64.0 0.0.3.255 area 0 

network 10.43.207.252 0.0.0.3 area 0
network 10.43.208.252 0.0.0.3 area 0

! gui ra mang internet
ip route 0.0.0.0 0.0.0.0 10.43.207.254
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

! DHCP - ip helper for DHCP(10.43.150.2)
interface vlan 41
ip helper-address 10.43.150.2
interface vlan 42
ip helper-address 10.43.150.2
interface vlan 43
ip helper-address 10.43.150.2

interface vlan 51
ip helper-address 10.43.150.2
interface vlan 52
ip helper-address 10.43.150.2
interface vlan 53
ip helper-address 10.43.150.2

interface vlan 61
ip helper-address 10.43.150.2
interface vlan 62
ip helper-address 10.43.150.2
interface vlan 63
ip helper-address 10.43.150.2






