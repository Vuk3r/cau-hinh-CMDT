
! =========== FIREWALL =========== !

! ======== ASA 1 ======== ! 
en
conf t
hostname ASA-1
enable password ASA-1

!
interface GigabitEthernet1/1
nameif outside1
security-level 100
ip address 10.43.231.253 255.255.255.252
no shutdown
!
interface GigabitEthernet1/2
nameif outside2
security-level 100
ip address 10.43.232.253 255.255.255.252
no shutdown

interface GigabitEthernet1/3
nameif inside1
security-level 100
ip address 10.43.221.254 255.255.255.252 
no shutdown
!
interface GigabitEthernet1/4
nameif inside2
security-level 100
ip address 10.43.223.254 255.255.255.252
no shutdown


! muon 2 interface inside1/2 muon di toi mang dich 10.0.0.0/8 thi di qua 1 trong 2 mang nay
route inside1 10.0.0.0 255.0.0.0 10.43.221.253 1
route inside2 10.0.0.0 255.0.0.0 10.43.223.253 10

route outside1 0.0.0.0 0.0.0.0 10.43.231.254 1
route outside2 0.0.0.0 0.0.0.0 10.43.232.254 10

! ACL
access-list BLOCK-HACKER extended deny ip host 9.9.9.9 any
access-list BLOCK-HACKER extended permit ip any any
access-group BLOCK-HACKER in interface outside1
access-group BLOCK-HACKER in interface outside2
end
wr mem

! ======== ASA 2 ======== ! 
en
conf t
hostname ASA-2
enable password ASA-2
interface GigabitEthernet1/1
nameif outside1
security-level 100
ip address 10.43.233.253 255.255.255.252
no shutdown
!
interface GigabitEthernet1/2
nameif outside2
security-level 100
ip address 10.43.234.253 255.255.255.252
no shutdown


interface GigabitEthernet1/3
nameif inside1
security-level 100
ip address 10.43.222.254 255.255.255.252 
no shutdown
interface GigabitEthernet1/4
nameif inside2
security-level 100
ip address 10.43.224.254 255.255.255.252 
no shutdown


! muon 2 interface inside1/2 muon di toi mang dich 10.0.0.0/8 thi di qua 1 trong 2 mang nay
route inside2 10.0.0.0 255.0.0.0 10.43.224.253 1
route inside1 10.0.0.0 255.0.0.0 10.43.222.253 10

route outside2 0.0.0.0 0.0.0.0 10.43.234.254 1
route outside1 0.0.0.0 0.0.0.0 10.43.233.254 10

! ACL
access-list BLOCK-HACKER extended deny ip host 9.9.9.9 any
access-list BLOCK-HACKER extended permit ip any any
access-group BLOCK-HACKER in interface outside1
access-group BLOCK-HACKER in interface outside2

end
wr mem

