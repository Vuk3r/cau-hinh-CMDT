! =============== SWITCH ACCESS =============== !
! ======== switch tang 1 : ======== ! 
en
conf t

vlan 11
name VLAN11-letan
vlan 12
name VLAN12-anninh
vlan 13
name VLAN13-kho

interface range fa0/4-8
switchport port-security
switchport port-security maximum 2
switchport port-security violation shutdown

!pc + Access point + printer
interface range fa0/4-6
switchport mode access
switchport access vlan 11

no shutdown

!pc 2
interface fa0/7
switchport mode access
switchport access vlan 12
no shutdown
!pc 3
interface fa0/8
switchport mode access
switchport access vlan 13
no shutdown

interface range fa0/1-3
!interface fa0/1
switchport mode trunk
switchport trunk allowed vlan 11,12,13
no shutdown
! ======== switch tang 2 : ======== ! 
en
conf t

vlan 21
name VLAN21-hanhchinh
vlan 22
name VLAN23-phapche
vlan 23
name VLAN22-ketoan

interface range fa0/4-8
switchport port-security
switchport port-security maximum 2
switchport port-security violation shutdown

!pc + Access point + printer
interface range fa0/4-6
switchport mode access
switchport access vlan 21
no shutdown

!pc 2
interface fa0/7
switchport mode access
switchport access vlan 22
no shutdown
!pc 3
interface fa0/8
switchport mode access
switchport access vlan 23
no shutdown

interface range fa0/1-3
!interface fa0/1
switchport mode trunk
switchport trunk allowed vlan 21,22,23
no shutdown


! ======== switch tang 3 : ======== ! 
en
conf t

vlan 31
name VLAN33-studio
vlan 32
name VLAN32-mkt
vlan 33
name VLAN31-sales


interface range fa0/4-8
switchport port-security
switchport port-security maximum 2
switchport port-security violation shutdown

!pc + Access point + printer
interface range fa0/4-6
switchport mode access
switchport access vlan 31
no shutdown

!pc 2
interface fa0/7
switchport mode access
switchport access vlan 32
no shutdown
!pc 3
interface fa0/8
switchport mode access
switchport access vlan 33
no shutdown

interface range fa0/1-3
!interface fa0/1
switchport mode trunk
switchport trunk allowed vlan 31,32,33
no shutdown


! ======== switch tang 4 : ======== ! 
en
conf t

interface range fa0/4-8
switchport port-security
switchport port-security maximum 2
switchport port-security violation shutdown

vlan 41
name VLAN41-r&d
vlan 42
name VLAN42-qc
vlan 43
name VLAN43-tailieu


!pc + Access point + printer
interface range fa0/4-6
switchport mode access
switchport access vlan 41
no shutdown

!pc 2
interface fa0/7
switchport mode access
switchport access vlan 42
no shutdown
!pc 3
interface fa0/8
switchport mode access
switchport access vlan 43
no shutdown

interface range fa0/1-3
!interface fa0/1
switchport mode trunk
switchport trunk allowed vlan 41,42,43
no shutdown

! ======== switch tang 5 : ======== ! 
en
conf t

interface range fa0/4-8
switchport port-security
switchport port-security maximum 2
switchport port-security violation shutdown

vlan 51
name VLAN51-sanxuat
vlan 52
name VLAN52-kho
vlan 53
name VLAN53-it


!pc + Access point + printer
interface range fa0/4-6
switchport mode access
switchport access vlan 51
no shutdown

!pc 2
interface fa0/7
switchport mode access
switchport access vlan 52
no shutdown
!pc 3
interface fa0/8
switchport mode access
switchport access vlan 53
no shutdown

interface range fa0/1-3
!interface fa0/1
switchport mode trunk
switchport trunk allowed vlan 51,52,53
no shutdown

! ======== switch tang 6 : ======== ! 
en
conf t

interface range fa0/4-8
switchport port-security
switchport port-security maximum 2
switchport port-security violation shutdown

vlan 61
name VLAN61-giamdoc
vlan 62
name VLAN62-dieuhanh
vlan 63
name VLAN63-vip



!pc + Access point + printer
interface range fa0/4-6
switchport mode access
switchport access vlan 61
no shutdown

!pc 2
interface fa0/7
switchport mode access
switchport access vlan 62
no shutdown
!pc 3
interface fa0/8
switchport mode access
switchport access vlan 63
no shutdown

interface range fa0/1-3
!interface fa0/1
switchport mode trunk
switchport trunk allowed vlan 61,62,63
no shutdown
