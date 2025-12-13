
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