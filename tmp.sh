! === CORE 1 === !
conf t
router ospf 1
router-id 10.10.10.11
network 10.43.201.252 0.0.0.3 area 0
network 10.43.203.252 0.0.0.3 area 0
network 10.43.205.252 0.0.0.3 area 0

! === CORE 2 === !
conf t

router ospf 1
router-id 20.20.20.11
network 10.43.202.252 0.0.0.3 area 0
network 10.43.204.252 0.0.0.3 area 0
network 10.43.206.252 0.0.0.3 area 0

! === Dis 1 === !

router ospf 1
router-id 2.2.2.1
network 10.43.201.252 0.0.0.3 area 0
network 10.43.202.252 0.0.0.3 area 0

network 10.43.16.0 0.0.3.255 area 0
network 10.43.24.0 0.0.3.255 area 0
network 10.43.32.0 0.0.3.255 area 0

! === Dis 2 === !

en
conf t
router ospf 1
router-id 2.2.2.2
network 10.43.203.252 0.0.0.3 area 0
network 10.43.204.252 0.0.0.3 area 0

network 10.43.16.0 0.0.3.255 area 0
network 10.43.24.0 0.0.3.255 area 0
network 10.43.32.0 0.0.3.255 area 0

! === Dis 3 === !

en
conf t
router ospf 1
router-id 2.2.2.3
network 10.43.205.252 0.0.0.3 area 0
network 10.43.206.252 0.0.0.3 area 0

network 10.43.16.0 0.0.3.255 area 0
network 10.43.24.0 0.0.3.255 area 0
network 10.43.32.0 0.0.3.255 area 0
