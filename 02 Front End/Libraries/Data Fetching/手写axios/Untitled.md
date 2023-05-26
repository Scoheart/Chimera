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