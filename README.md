# CẤU HÌNH CHUYỂN MẠCH ĐỊNH TUYẾN CUỐI KÌ

Các file được đặt tên theo <lớp>-<loại-thiết-bị> để DỄ SỬA CẤU HÌNH. Vì cấu hình giống nhau nhưng chỉ khác mỗi tầng, mỗi con nên viết chung vào cùng 1 file cấu hình với các thiết bị có chức năng giống nhau để dễ sửa.

Bao nhiêu thiết bị khác nhau về loại và chức năng sẽ có 1 cấu hình riêng.

## NHỮNG THỨ CẦN BỔ SUNG

*** Quy trình được thực hiện theo trình tự và được áp dụng với toàn bộ các  tầng cùng 1 lúc. Việc phân tách cấu hình đã giúp fix lệnh nhanh. ***

1. VLAN + SVI + IP helper (L2 foundation)

2. DHCP

3. Routing (OSPF/EIGRP)

4. NAT (Internet edge)

5. Firewall (ACL/ZPF/Policies)

6. Redundancy (HSRP, EtherChannel, HA)