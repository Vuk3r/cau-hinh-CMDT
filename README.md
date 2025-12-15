# CẤU HÌNH CHUYỂN MẠCH ĐỊNH TUYẾN CUỐI KÌ

Các file được đặt tên theo <lớp>-<loại-thiết-bị> để DỄ SỬA CẤU HÌNH. Vì cấu hình giống nhau nhưng chỉ khác mỗi tầng, mỗi con nên viết chung vào cùng 1 file cấu hình với các thiết bị có chức năng giống nhau để dễ sửa.

Bao nhiêu thiết bị khác nhau về loại và chức năng sẽ có 1 cấu hình riêng.

## NHỮNG THỨ CẦN BỔ SUNG

*** Quy trình được thực hiện theo trình tự và được áp dụng với toàn bộ các  tầng cùng 1 lúc. Việc phân tách cấu hình đã giúp fix lệnh nhanh. ***

1. VLAN + SVI + IP

2. DHCP

3. Routing (OSPF + Static)


4. NAT (Internet edge)

5. Firewall (ACL)

6. Redundancy (HSRP)


### FOLLOW UP TASK ###

[+] Đã xong chia VLAN, IP

[+] Đã xong DHCP cho tầng 1,2,3 (Gateway đã được set về .254 - trùng với ip của HSRP)

[+] Đã xong được HSRP cho tầng 1,2,3

[+] Đã xong định tuyến lên Core của tầng 1,2,3

[-] Với dự phòng từ distribute lên core thì dùng route tĩnh + chỉ số ưu tiên

[-] Với dự phòng từ core lên FW thì : FW 1 làm chính, route tĩnh chính lên ASA-1, route phụ sang ASA-2

[-] Với dự phòng từ FW lên Router Edge thì cần cấu hình HSRP

