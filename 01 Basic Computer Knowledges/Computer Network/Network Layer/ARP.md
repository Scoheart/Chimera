# ARP

Address Resolution Protocol



# Gratuitous ARP/ ARP Announcement

免费ARP、ARP通告

![image-20230416204009226](./ARP.assets/image-20230416204009226.png)

# ARP message

![image-20230416200348999](./ARP.assets/image-20230416200348999.png)

![image-20230416200929688](./ARP.assets/image-20230416200929688.png)

# ARP query mesage

| 0-7               | 8-15            | 16-23          | 24-31 |
| ----------------- | --------------- | -------------- | ----- |
| Hardware Type     |                 | Protocol Type  |       |
| Hardware Length   | Protocol Length | Operation Code |       |
| Sender MAC Adress |                 |                |       |
| Sender IP Adress  |                 |                |       |
| Target MAC Adress |                 |                |       |
| Target IP Adress  |                 |                |       |



# ARP response message

