# CẤU HÌNH CHUYỂN MẠCH ĐỊNH TUYẾN CUỐI KÌ

Các file được đặt tên theo <lớp>-<loại-thiết-bị> để DỄ SỬA CẤU HÌNH. Vì cấu hình giống nhau nhưng chỉ khác mỗi tầng, mỗi con nên viết chung vào cùng 1 file cấu hình với các thiết bị có chức năng giống nhau để dễ sửa.

Bao nhiêu thiết bị khác nhau về loại và chức năng sẽ có 1 cấu hình riêng.

## NHỮNG THỨ CẦN BỔ SUNG

*** Quy trình được thực hiện theo trình tự và được áp dụng với toàn bộ các  tầng cùng 1 lúc. Việc phân tách cấu hình đã giúp fix lệnh nhanh. 

1. Cấu hình DHCP

2. Cấu hình định tuyến nội bộ

3. Cấu hình dự phòng cho nội bộ

4. Cấu hình tường lửa

5. Cấu hình định tuyến + DHCP + NAT cho Router Edge

6. Cấu hình dự phòng cho Router Edge

7. Cấu hình ACL cho Router Edge

8. Cấu hình NAT
