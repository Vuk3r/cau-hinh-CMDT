! =========== CORE 1 ===========:
en
conf t
host name CORE-1
! === IP FOR INTERFACE === !

interface range fa0/1-9
no switchport

! = CORE -> FW = !
interface fa0/1
ip address 10.43.221.253 255.255.255.252
no shutdown
interface fa0/2
ip address 10.43.222.253 255.255.255.252
no shutdown

! = CORE -> DIS = !
interface fa0/4
ip address 10.43.201.3 255.255.255.252
!ip helper-address 10.43.150.2
no shutdown
interface fa0/5
ip address 10.43.203.253 255.255.255.252
no shutdown
interface fa0/6
ip address 10.43.205.253 255.255.255.252
no shutdown
interface fa0/7
ip address 10.43.207.253 255.255.255.252
no shutdown
interface fa0/8
ip address 10.43.209.253 255.255.255.252
no shutdown
interface fa0/9
ip address 10.43.211.253 255.255.255.252
no shutdown


! === ROUTING === !

ip routing
!tmp ip ra fw. chua co HSRP
ip route 0.0.0.0 0.0.0.0 10.43.221.254 1
ip route 0.0.0.0 0.0.0.0 10.43.222.254 10

router ospf 1 
network 10.43.201.252 0.0.0.3 area 0
network 10.43.203.252 0.0.0.3 area 0
network 10.43.205.252 0.0.0.3 area 0
network 10.43.207.252 0.0.0.3 area 0
network 10.43.209.252 0.0.0.3 area 0
network 10.43.211.252 0.0.0.3 area 0

! === DATA CENTER === !
vlan 150
name DHCP-150
interface vlan 150
ip address 10.43.150.1 255.255.255.0
no shutdown

vlan 151
name HTTP-151
interface vlan 151
ip address 10.43.151.1 255.255.255.0
no shutdown

vlan 152
name EMAIL-152
interface vlan 152
ip address 10.43.152.1 255.255.255.0
no shutdown

vlan 153
name DHCPv6-153
interface vlan 153
ip address 10.43.153.1 255.255.255.0
no shutdown

vlan 154
name DNS-154
interface vlan 154
ip address 10.43.154.1 255.255.255.0
no shutdown

vlan 155
name HTTP-155
interface vlan 155
ip address 10.43.155.1 255.255.255.0
no shutdown

!trunk
interface fa0/10
switchport trunk encapsulation dot1q
switchport mode trunk
switchport trunk allowed vlan 150,151,152
no shutdown

!trunk
interface fa0/11
switchport trunk encapsulation dot1q
switchport mode trunk
switchport trunk allowed vlan 153,154,155
no shutdown

! === TRUNK FOR DATA CENTER === !
!trunk
interface fa0/10
switchport trunk encapsulation dot1q
switchport mode trunk
switchport trunk allowed vlan 150,151,152
no shutdown

!trunk
interface fa0/11
switchport trunk encapsulation dot1q
switchport mode trunk
switchport trunk allowed vlan 153,154,155
no shutdown



! =========== CORE 2 ===========:
en
conf t
hostname CORE-2
! === IP FOR INTERFACE === !

interface range fa0/1-9
no switchport

! = CORE -> FW = !
interface fa0/1
ip address 10.43.223.253 255.255.255.252
no shutdown
interface fa0/2
ip address 10.43.224.253 255.255.255.252
no shutdown

! = CORE -> DIS = !
interface fa0/4
ip address 10.43.202.253 255.255.255.252
ip helper-address 10.43.150.2
no shutdown
interface fa0/5
ip address 10.43.204.253 255.255.255.252
no shutdown
interface fa0/6
ip address 10.43.206.253 255.255.255.252
no shutdown
interface fa0/7
ip address 10.43.208.253 255.255.255.252
no shutdown
interface fa0/8
ip address 10.43.210.253 255.255.255.252
no shutdown
interface fa0/9
ip address 10.43.212.253 255.255.255.252
no shutdown

! === ROUTING === !

ip routing
!tmp ip ra fw. chua co HSRP
ip route 0.0.0.0 0.0.0.0 10.43.224.254 1
ip route 0.0.0.0 0.0.0.0 10.43.223.254 10

router ospf 1 
network 10.43.202.252 0.0.0.3 area 0
network 10.43.204.252 0.0.0.3 area 0
network 10.43.206.252 0.0.0.3 area 0
network 10.43.208.252 0.0.0.3 area 0
network 10.43.210.252 0.0.0.3 area 0
network 10.43.212.252 0.0.0.3 area 0

! === DATA CENTER === !
vlan 150
name DHCP-150
interface vlan 150
ip address 10.43.150.1 255.255.255.0
no shutdown

vlan 151
name HTTP-151
interface vlan 151
ip address 10.43.151.1 255.255.255.0
no shutdown

vlan 152
name EMAIL-152
interface vlan 152
ip address 10.43.152.1 255.255.255.0
no shutdown

vlan 153
name DHCPv6-153
interface vlan 153
ip address 10.43.153.1 255.255.255.0
no shutdown

vlan 154
name DNS-154
interface vlan 154
ip address 10.43.154.1 255.255.255.0
no shutdown

vlan 155
name HTTP-155
interface vlan 155
ip address 10.43.155.1 255.255.255.0
no shutdown

!trunk
interface fa0/10
switchport trunk encapsulation dot1q
switchport mode trunk
switchport trunk allowed vlan 150,151,152
no shutdown

!trunk
interface fa0/11
switchport trunk encapsulation dot1q
switchport mode trunk
switchport trunk allowed vlan 153,154,155
no shutdown

! === TRUNK FOR DATA CENTER === !
!trunk
interface fa0/10
switchport trunk encapsulation dot1q
switchport mode trunk
switchport trunk allowed vlan 150,151,152
no shutdown

!trunk
interface fa0/11
switchport trunk encapsulation dot1q
switchport mode trunk
switchport trunk allowed vlan 153,154,155
no shutdown
