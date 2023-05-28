- lib
  - adapter
    - adapters.js
    - xhr.js
    - http.js
  - core
    - Axios.js
    - dispatchRequest.js
  - defaults
    - index.js
  - axios.js



# xhrAdapter

适配浏览器环境调用XMLHttpRequest对象发送请求

使用Promise对象接收响应数据并返回



# httpAdapter

适配nodejs环境调用http对象发送请求

使用Promise对象接收响应数据并返回



# dispatchRequest

根据不同的javascript环境选择调用哪一个适配器来发送请求

请求数据转换

响应数据转换

返回结果为所选择的适配器 所返回的Promise对象



- instance = new Axios(defalutConifg)
- instance(config)
- request(merge(defalutConifg, config))
- dispatchRequest(config)
- adapter.getAdapter()
- xhr/http(config)



# design pattern

单例模式

axios只暴露了一个实例

工厂模式

axios提供了create方法创建实例

适配器模式

axios通过适配器调用xhr或http

原型模式？

axios利用原型复制了axios实例



J2EE

拦截过滤器模式