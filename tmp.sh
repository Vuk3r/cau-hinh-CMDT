
! =============== Distribute Tang 6 =============== !
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
ip address 10.43.211.253 255.255.255.252
no shutdown
!routing 
ip routing
interface fa0/2
no switchport
ip address 10.43.212.253 255.255.255.252
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

router ospf 1
router-id 6.6.6.6

network 10.43.211.252 0.0.0.3 area 0
network 10.43.212.252 0.0.0.3 area 0

network 10.43.48.0 0.0.3.255 area 0   
network 10.43.56.0 0.0.3.255 area 0   
network 10.43.64.0 0.0.3.255 area 0 

! gui ra mang internet
ip route 0.0.0.0 0.0.0.0 10.43.211.254 1
ip route 0.0.0.0 0.0.0.0 10.43.212.254 10

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

! ==== HSRP - DIS 6 ==== !

! = TANG 4 = !
interface vlan 41
standby 11 ip 10.43.48.254
standby 11 priority 110
standby 11 preempt

interface vlan 42
standby 11 ip 10.43.49.254
standby 11 priority 110
standby 11 preempt

interface vlan 43
standby 11 ip 10.43.50.254
standby 11 priority 110
standby 11 preempt

! = TANG 5 = !

interface vlan 51
standby 11 ip 10.43.56.254
standby 11 priority 100
standby 11 preempt

interface vlan 52
standby 11 ip 10.43.57.254
standby 11 priority 100
standby 11 preempt

interface vlan 53
standby 11 ip 10.43.58.254
standby 11 priority 100
standby 11 preempt

! = TANG 6 = !

interface vlan 61
standby 11 ip 10.43.64.254
standby 11 priority 120
standby 11 preempt

interface vlan 62
standby 11 ip 10.43.65.254
standby 11 priority 120
standby 11 preempt

interface vlan 63
standby 11 ip 10.43.66.254
standby 11 priority 120
standby 11 preempt

end
wr mem

