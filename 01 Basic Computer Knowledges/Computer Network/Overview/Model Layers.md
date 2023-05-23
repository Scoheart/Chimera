## ISO/ OSI

International Organization for Standardization/ Open System Interconnect Reference Model

| Layers             |
| ------------------ |
| Application Layer  |
| Presentation Layer |
| Session Layer      |
| Transport Layer    |
| Network Layer      |
| Data Link Layer    |
| Physical Layer     |



## TCP/ IP

Transmisson Control Protocol/ Internet Protocol

| Layers                                                       |
| ------------------------------------------------------------ |
| Application Layer                                            |
| Transport Layer                                              |
| Internet Layer/ Network Layer                                |
| Link Layer/ Network Interface Layer/ Network Access Layer/ Network Link Layer |



## Five-Layer

| Layers            |
| :---------------- |
| Application Layer |
| Transport Layer   |
| Network Layer     |
| Data Link Layer   |
| Physical Layer    |



## TCP/IP Protocol Suite

| ISO/OSI            | TCP/IP                  | Five-Layer        | TCP/IP Protocol Suite |
| ------------------ | ----------------------- | :---------------- | --------------------- |
| Application Layer  | Application Layer       | Application Layer | HTTP, HTTPS, DNS      |
| Presentation Layer |                         |                   |                       |
| Session Layer      |                         |                   |                       |
| Transport Layer    | Transport Layer         | Transport Layer   | TCP, UDP              |
| Network Layer      | Internet Layer          | Network Layer     | IP                    |
| Data Link Layer    | Network Interface Layer | Data Link Layer   |                       |
| Physical Layer     |                         | Physical Layer    |                       |



## PDU

Protocol Data Unit

- PCI Protocol Control Information
- SDU Service Data Unit

(n-1)SDU = nPDU = nPCI + nSDU

| ISO/OSI            | TCP/IP                  | Five-Layer        | TCP/IP Protocol Suite | PDU                         |
| ------------------ | ----------------------- | :---------------- | --------------------- | --------------------------- |
| Application Layer  | Application Layer       | Application Layer | HTTP, HTTPS, DNS      | Message                     |
| Presentation Layer |                         |                   |                       |                             |
| Session Layer      |                         |                   |                       |                             |
| Transport Layer    | Transport Layer         | Transport Layer   | TCP, UDP              | Segment(TCP)/ Datagram(UDP) |
| Network Layer      | Internet Layer          | Network Layer     | IP,ARP                | Packet                      |
| Data Link Layer    | Network Interface Layer | Data Link Layer   |                       | Frame                       |
| Physical Layer     |                         | Physical Layer    |                       | Bit                         |



### Overview

- APPL: message header + message body
- TransL: src port + dest port 
- NetL: src ip: src port + dest ip: dest port 
- DLL: src MAC + dest MAC

### Message



### Segment/ Datagram

#### Segment

| PDU     | PCI        | SDU  |
| ------- | ---------- | ---- |
| Segment | TCP Header | Data |



TCP Header：Fixed(20B) + Optional

| 0-7                                       | 8-15                                        | 16-23            | 24-31 |
| ----------------------------------------- | ------------------------------------------- | ---------------- | ----- |
| Source Port                               | ～                                          | Destination Port | ～    |
| Sequence Number                           |                                             |                  |       |
| Acknowledgement Number                    |                                             |                  |       |
| Data Offset(0-3)            Reserved(4-9) | Flags(10-15) [URG, ACK, PSH, RST, SYN, FIN] | Window           |       |
| Checksum                                  |                                             | Urgent Pointer   |       |
| Options                                   |                                             |                  |       |



#### Datagram

| PDU      | PCI        | SDU  |
| -------- | ---------- | ---- |
| Datagram | UDP Header | Data |



UDP Header(8B)

| 0-15        | 16-31            |
| ----------- | ---------------- |
| Source Port | Destination Port |
| Length      | Checksum         |



### Packet

| PDU    | PCI       | SDU  |
| ------ | --------- | ---- |
| Packet | IP Header | Data |



IP Header: Fixed(20B) + Options

| 0-7                     | 8-15            | 16-23                           | 24-31 |
| ----------------------- | --------------- | ------------------------------- | ----- |
| Version\| Header Length | Type of Service | Total Length                    |       |
| Identification          |                 | Flags(16-18) \| Fragment Offset |       |
| Time to Live            | Protocol        | Header Checksum                 |       |
| Source IP Address       |                 |                                 |       |
| Destination IP Address  |                 |                                 |       |
| Options                 |                 |                                 |       |



### Frame

### Bit



