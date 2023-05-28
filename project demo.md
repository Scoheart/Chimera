# Student

getByid

list

insert

delete

update



前端

student 

- 除 dormid id 
- 增 building unit floor room



前后端 一起定义接口

一起定义响应数据格式







前端发请求

http

get delete



- Query parameters。       ？username=shuhao&passwd=123456
- Path parameters             ？1/2/3/



put patch post

- Body 

  {

  ​	}



- 传入一个用户的所有信息
- 根据用户名查数据库有没有这个用户名
  - 如果有
  - 注册失败，用户名重复
  - 如果没有
  - 插入数据库
  - 注册成功
- 查   根据用户名查用户 User user = 
- user == null    return success               return failed
- 增