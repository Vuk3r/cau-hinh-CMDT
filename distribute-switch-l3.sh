
! =============== Distribute Tang 1 =============== !
!swl3-1
en
conf t
ip routing

vlan 11
name VLAN11-letan
vlan 12
name VLAN12-anninh
vlan 13
name VLAN13-kho
vlan 21
name VLAN21-hanhchinh
vlan 22
name VLAN22-ketoan
vlan 23
name VLAN23-phapche
vlan 31
name VLAN31-sales 
vlan 32
name VLAN32-mkt
vlan 33
name VLAN31-studio


interface vlan 11
ip address 10.43.16.1 255.255.255.0
no shutdown

interface vlan 12
ip address 10.43.17.1 255.255.255.0
no shutdown

interface vlan 13
ip address 10.43.18.1 255.255.255.0
no shutdown

interface vlan 21
ip address 10.43.24.1 255.255.255.0
no shutdown

interface vlan 22
ip address 10.43.25.1 255.255.255.0
no shutdown

interface vlan 23
ip address 10.43.26.1 255.255.255.0
no shutdown

interface vlan 31
ip address 10.43.32.1 255.255.255.0
no shutdown

interface vlan 32
ip address 10.43.33.1 255.255.255.0
no shutdown

interface vlan 33
ip address 10.43.34.1 255.255.255.0
no shutdown

!routing 
interface fa0/1
no switchport
ip address 10.43.201.253 255.255.255.252
no shutdown
!routing 
ip routing
interface fa0/2
no switchport
ip address 10.43.202.253 255.255.255.252
no shutdown

!trunk
interface fa0/3
switchport trunk encapsulation dot1q
switchport mode trunk
switchport trunk allowed vlan 11,12,13
no shutdown
!trunk
interface fa0/4
switchport trunk encapsulation dot1q
switchport mode trunk
switchport trunk allowed vlan 21,22,23
no shutdown
!trunk
interface fa0/5
switchport trunk encapsulation dot1q
switchport mode trunk
switchport trunk allowed vlan 31,32,33
no shutdown


! ==== ROUTING  ==== !

router ospf 1
router-id 2.2.2.1
network 10.43.201.252 0.0.0.3 area 0
network 10.43.202.252 0.0.0.3 area 0

network 10.43.16.0 0.0.3.255 area 0
network 10.43.24.0 0.0.3.255 area 0
network 10.43.32.0 0.0.3.255 area 0

! gui ra mang internet
ip route 0.0.0.0 0.0.0.0 10.43.201.254 1
ip route 0.0.0.0 0.0.0.0 10.43.202.254 10


! DHCP - ip helper for DHCP(10.43.150.2)
interface vlan 11
ip helper-address 10.43.150.2
interface vlan 12
ip helper-address 10.43.150.2
interface vlan 13
ip helper-address 10.43.150.2

interface vlan 21
ip helper-address 10.43.150.2
interface vlan 22
ip helper-address 10.43.150.2
interface vlan 23
ip helper-address 10.43.150.2

interface vlan 31
ip helper-address 10.43.150.2
interface vlan 32
ip helper-address 10.43.150.2
interface vlan 33
ip helper-address 10.43.150.2

! ==== HSRP - DIS 1 ==== !

! = TANG 1 = !
interface vlan 11
standby 11 ip 10.43.16.254
standby 11 priority 120
standby 11 preempt

interface vlan 12
standby 11 ip 10.43.17.254
standby 11 priority 120
standby 11 track FastEthernet0/1
standby 11 track FastEthernet0/2
standby 11 track FastEthernet0/3
standby 11 preempt

interface vlan 13
standby 11 ip 10.43.18.254
standby 11 priority 120
standby 11 track FastEthernet0/1
standby 11 track FastEthernet0/2
standby 11 track FastEthernet0/3
standby 11 preempt

! = TANG 2 = !

interface vlan 21
standby 22 ip 10.43.24.254
standby 22 priority 110
standby 11 track FastEthernet0/1
standby 11 track FastEthernet0/2
standby 11 track FastEthernet0/3
standby 22 preempt

interface vlan 22
standby 22 ip 10.43.25.254
standby 22 priority 110
standby 11 track FastEthernet0/1
standby 11 track FastEthernet0/2
standby 11 track FastEthernet0/3
standby 22 preempt

interface vlan 23
standby 22 ip 10.43.26.254
standby 22 priority 110
standby 11 track FastEthernet0/1
standby 11 track FastEthernet0/2
standby 11 track FastEthernet0/3
standby 22 preempt

! = TANG 3 = !

interface vlan 31
standby 33 ip 10.43.32.254
standby 33 priority 100
standby 11 track FastEthernet0/1
standby 11 track FastEthernet0/2
standby 11 track FastEthernet0/3
standby 33 preempt

interface vlan 32
standby 33 ip 10.43.33.254
standby 33 priority 100
standby 11 track FastEthernet0/1
standby 11 track FastEthernet0/2
standby 11 track FastEthernet0/3
standby 33 preempt

interface vlan 33
standby 33 ip 10.43.34.254
standby 33 priority 100
standby 11 track FastEthernet0/1
standby 11 track FastEthernet0/2
standby 11 track FastEthernet0/3
standby 33 preempt

end
write mem

! =============== Distribute Tang 2 =============== !
!swl3-1
en
conf t
ip routing

vlan 11
name VLAN11-letan
vlan 12
name VLAN12-anninh
vlan 13
name VLAN13-kho
vlan 21
name VLAN21-hanhchinh
vlan 22
name VLAN22-ketoan
vlan 23
name VLAN23-phapche
vlan 31
name VLAN31-sales 
vlan 32
name VLAN32-mkt
vlan 33
name VLAN31-studio


interface vlan 11
ip address 10.43.16.1 255.255.255.0
no shutdown

interface vlan 12
ip address 10.43.17.1 255.255.255.0
no shutdown

interface vlan 13
ip address 10.43.18.1 255.255.255.0
no shutdown

interface vlan 21
ip address 10.43.24.1 255.255.255.0
no shutdown

interface vlan 22
ip address 10.43.25.1 255.255.255.0
no shutdown

interface vlan 23
ip address 10.43.26.1 255.255.255.0
no shutdown

interface vlan 31
ip address 10.43.32.1 255.255.255.0
no shutdown

interface vlan 32
ip address 10.43.33.1 255.255.255.0
no shutdown

interface vlan 33
ip address 10.43.34.1 255.255.255.0
no shutdown

!trunk
interface fa0/3
switchport trunk encapsulation dot1q
switchport mode trunk
switchport trunk allowed vlan 11,12,13
no shutdown
!trunk
interface fa0/4
switchport trunk encapsulation dot1q
switchport mode trunk
switchport trunk allowed vlan 21,22,23
no shutdown
!trunk
interface fa0/5
switchport trunk encapsulation dot1q
switchport mode trunk
switchport trunk allowed vlan 31,32,33
no shutdown

!routing 
interface fa0/1
no switchport
ip address 10.43.203.253 255.255.255.252
no shutdown
!routing 
ip routing
interface fa0/2
no switchport
ip address 10.43.204.253 255.255.255.252
no shutdown

! ==== ROUTING ==== !
en
conf t
router ospf 1
router-id 2.2.2.2
network 10.43.203.252 0.0.0.3 area 0
network 10.43.204.252 0.0.0.3 area 0

network 10.43.16.0 0.0.3.255 area 0
network 10.43.24.0 0.0.3.255 area 0
network 10.43.32.0 0.0.3.255 area 0

! gui ra mang internet
ip route 0.0.0.0 0.0.0.0 10.43.203.254 1
ip route 0.0.0.0 0.0.0.0 10.43.204.254 10

! DHCP - ip helper for DHCP(10.43.150.2)
interface vlan 11
ip helper-address 10.43.150.2
interface vlan 12
ip helper-address 10.43.150.2
interface vlan 13
ip helper-address 10.43.150.2

interface vlan 21
ip helper-address 10.43.150.2
interface vlan 22
ip helper-address 10.43.150.2
interface vlan 23
ip helper-address 10.43.150.2

interface vlan 31
ip helper-address 10.43.150.2
interface vlan 32
ip helper-address 10.43.150.2
interface vlan 33
ip helper-address 10.43.150.2

! ==== HSRP - DIS 2 ==== !

! = TANG 1 = !
interface vlan 11
standby 11 ip 10.43.16.254
standby 11 priority 110
standby 11 preempt

interface vlan 12
standby 11 ip 10.43.17.254
standby 11 priority 110
standby 11 preempt

interface vlan 13
standby 11 ip 10.43.18.254
standby 11 priority 110
standby 11 preempt

! = TANG 2 = !

interface vlan 21
standby 11 ip 10.43.24.254
standby 11 priority 120
standby 11 preempt

interface vlan 22
standby 11 ip 10.43.25.254
standby 11 priority 120
standby 11 preempt

interface vlan 23
standby 11 ip 10.43.26.254
standby 11 priority 120
standby 11 preempt

! = TANG 3 = !

interface vlan 31
standby 11 ip 10.43.32.254
standby 11 priority 100
standby 11 preempt

interface vlan 32
standby 11 ip 10.43.33.254
standby 11 priority 100
standby 11 preempt

interface vlan 33
standby 11 ip 10.43.34.254
standby 11 priority 100
standby 11 preempt

end
wr mem


! =============== Distribute Tang 3 =============== !
!swl3-1
en
conf t
ip routing

vlan 11
name VLAN11-letan
vlan 12
name VLAN12-anninh
vlan 13
name VLAN13-kho
vlan 21
name VLAN21-hanhchinh
vlan 22
name VLAN22-ketoan
vlan 23
name VLAN23-phapche
vlan 31
name VLAN31-sales 
vlan 32
name VLAN32-mkt
vlan 33
name VLAN31-studio


interface vlan 11
ip address 10.43.16.1 255.255.255.0
no shutdown

interface vlan 12
ip address 10.43.17.1 255.255.255.0
no shutdown

interface vlan 13
ip address 10.43.18.1 255.255.255.0
no shutdown

interface vlan 21
ip address 10.43.24.1 255.255.255.0
no shutdown

interface vlan 22
ip address 10.43.25.1 255.255.255.0
no shutdown

interface vlan 23
ip address 10.43.26.1 255.255.255.0
no shutdown

interface vlan 31
ip address 10.43.32.1 255.255.255.0
no shutdown

interface vlan 32
ip address 10.43.33.1 255.255.255.0
no shutdown

interface vlan 33
ip address 10.43.34.1 255.255.255.0
no shutdown

!routing
interface fa0/1
no switchport
ip address 10.43.205.253 255.255.255.252
no shutdown
!routing 
ip routing
interface fa0/2
no switchport
ip address 10.43.206.253 255.255.255.252
no shutdown
!trunk
interface fa0/3
switchport trunk encapsulation dot1q
switchport mode trunk
switchport trunk allowed vlan 11,12,13
no shutdown
!trunk
interface fa0/4
switchport trunk encapsulation dot1q
switchport mode trunk
switchport trunk allowed vlan 21,22,23
no shutdown
!trunk
interface fa0/5
switchport trunk encapsulation dot1q
switchport mode trunk
switchport trunk allowed vlan 31,32,33
no shutdown

! ==== ROUTING  ==== !

en
conf t
router ospf 1
router-id 2.2.2.3
network 10.43.205.252 0.0.0.3 area 0
network 10.43.206.252 0.0.0.3 area 0

network 10.43.16.0 0.0.3.255 area 0
network 10.43.24.0 0.0.3.255 area 0
network 10.43.32.0 0.0.3.255 area 0

! routing ra mang internet
ip route 0.0.0.0 0.0.0.0 10.43.205.254 1
ip route 0.0.0.0 0.0.0.0 10.43.206.254 10

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

! DHCP - ip helper for DHCP(10.43.150.2)
interface vlan 11
ip helper-address 10.43.150.2
interface vlan 12
ip helper-address 10.43.150.2
interface vlan 13
ip helper-address 10.43.150.2

interface vlan 21
ip helper-address 10.43.150.2
interface vlan 22
ip helper-address 10.43.150.2
interface vlan 23
ip helper-address 10.43.150.2

interface vlan 31
ip helper-address 10.43.150.2
interface vlan 32
ip helper-address 10.43.150.2
interface vlan 33
ip helper-address 10.43.150.2

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
ip address 10.43.207.2 255.255.255.0
no shutdown
!routing 
ip routing
interface fa0/2
no switchport
ip address 10.43.208.253 255.255.255.252
no shutdown

router ospf 1
router-id 4.4.4.4
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


! ==== HSRP - DIS 3 ==== !

! = TANG 1 = !
interface vlan 11
standby 11 ip 10.43.16.254
standby 11 priority 110
standby 11 preempt

interface vlan 12
standby 11 ip 10.43.17.254
standby 11 priority 110
standby 11 preempt

interface vlan 13
standby 11 ip 10.43.18.254
standby 11 priority 110
standby 11 preempt

! = TANG 2 = !

interface vlan 21
standby 11 ip 10.43.24.254
standby 11 priority 100
standby 11 preempt

interface vlan 22
standby 11 ip 10.43.25.254
standby 11 priority 100
standby 11 preempt

interface vlan 23
standby 11 ip 10.43.26.254
standby 11 priority 100
standby 11 preempt

! = TANG 3 = !

interface vlan 31
standby 11 ip 10.43.32.254
standby 11 priority 120
standby 11 preempt

interface vlan 32
standby 11 ip 10.43.33.254
standby 11 priority 120
standby 11 preempt

interface vlan 33
standby 11 ip 10.43.34.254
standby 11 priority 120
standby 11 preempt

! =============== Distribute Tang 5 =============== !
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
ip address 10.43.207.2 255.255.255.0
no shutdown
!routing 
ip routing
interface fa0/2
no switchport
ip address 10.43.208.253 255.255.255.252
no shutdown

router ospf 1
router-id 4.4.4.4
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
ip address 10.43.207.2 255.255.255.0
no shutdown
!routing 
ip routing
interface fa0/2
no switchport
ip address 10.43.208.253 255.255.255.252
no shutdown

router ospf 1
router-id 4.4.4.4
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

# ! DHCP - ip helper for DHCP(10.43.150.2)
# interface vlan 41
# ip helper-address 10.43.150.2
# interface vlan 42
# ip helper-address 10.43.150.2
# interface vlan 43
# ip helper-address 10.43.150.2

# interface vlan 51
# ip helper-address 10.43.150.2
# interface vlan 52
# ip helper-address 10.43.150.2
# interface vlan 53
# ip helper-address 10.43.150.2

# interface vlan 61
# ip helper-address 10.43.150.2
# interface vlan 62
# ip helper-address 10.43.150.2
# interface vlan 63
# ip helper-address 10.43.150.22

