! ISP =================
en 
conf t

interface gi0/0.8 
encapsulation dot1q 8
ip address 8.8.8.1 255.0.0.0

interface gi0/0.10
encapsulation dot1q 10
ip address 9.9.9.1 255.0.0.0
no shutdown

interface gi0/1
ip address 18.18.18.1 255.0.0.0
no shutdown

interface gi0/2
ip address 36.36.36.1 255.0.0.0
no shutdown

!chua cau hinh hsrp
ip route 0.0.0.0 0.0.0.0 18.18.18.18 1
ip route 0.0.0.0 0.0.0.0 36.36.36.36 1
