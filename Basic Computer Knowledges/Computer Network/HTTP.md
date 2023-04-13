# HTTP

Hyper Text Transfer Protocol



| HTTP request message |                                                           |
| -------------------- | --------------------------------------------------------- |
| request line         | request method\| request URI\| HTTP Protocol Version      |
| request header       | Header-name: Header-value,<br />Header-name: Header-value |
| blank line           |                                                           |
| request body         |                                                           |



| HTTP response message |                                                   |
| --------------------- | ------------------------------------------------- |
| status line           | HTTP Protocol Version｜Status-code｜Status-phrase |
| response header       |                                                   |
| blank line            |                                                   |
| response body         |                                                   |



HTTP Versions

- HTTP/0.9
- HTTP/1.0
- HTTP/1.1
- HTTP/2
- HTTP/3



## HTTP/0.9

只有GET



## HTTP/1.0

新增POST、PUT、DELETE等

特性：

- 无状态
- 无连接



## HTTP/1.1

特性：

- 长连接
- 管道化
- 缓存处理
- 断点传输



缺点：

- TCP慢启动
- 队头阻塞
- 多条TCP连接竞争



## HTTP/2.0

特性：

- 多路复用
- 二进制分帧
- 头部压缩



缺点：

- 传输层的TCP 队头阻塞
- TCP握手延迟
- TCP协议僵化



## HTTP/3.0

特性：

- QUIC



