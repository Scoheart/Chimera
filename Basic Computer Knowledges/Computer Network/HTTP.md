# HTTP

Hyper Text Transfer Protocol



| HTTP request message |                                                              |
| -------------------- | ------------------------------------------------------------ |
| Request Line         | Method <SP> Request-URI <SP> HTTP-Version <CRLF>             |
| Request Header       | Request-Header Fields1：value1,<br />Request-Header Fields2：value2, |
| Blank Line           |                                                              |
| Request body         |                                                              |



| HTTP response message |                                                              |
| --------------------- | ------------------------------------------------------------ |
| Status Line           | HTTP-Version <SP> Status-code <SP> Reason-Phrase <CRLF>      |
| Response Header       | Response-Header Fields1: Value1<br />Response-Header Fields2: Value2 |
| Blank Line            |                                                              |
| Response Body         |                                                              |



HTTP Versions

- HTTP/0.9
- HTTP/1.0
- HTTP/1.1
- HTTP/2
- HTTP/3



## HTTP/0.9

Method：GET

- Simplex Request-Response
- Only HTML
- Terminated immediately after the response



## HTTP/1.0

https://www.w3.org/Protocols/HTTP/1.0/spec

Methods：Get、HEAD、POST

Additional Methods：PUT、DELETE、LINK、UNLINK

- Full Duplex Request-Response
- 请求完断开，Connection：keep-alive
- 缓存机制
- 数据类型
- 安全机制



## HTTP/1.1

https://www.w3.org/Protocols/rfc2616/rfc2616.html

https://www.rfc-editor.org/rfc/rfc9110.html

Method：GET、HEAD、POST、PUT、DELETE、CONNECT、OPTIONS、TRACE

- Persistent connections
- Pipelining
- Cache Control



Disadvantage：

- HTTP：head-of-line blocking



## HTTP/2.0

- Request multiplexing：Binary Frame
- Data compression of HTTP headers
- Prioritization of requests
- Server push
- 安全性



Disadvantage：

- TCP：head-of-line blocking
- TCP协议僵化



## HTTP/3.0

- QUIC



