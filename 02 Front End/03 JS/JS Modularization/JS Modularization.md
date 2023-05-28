# 模块化发展历史

https://www.bilibili.com/video/BV18s411E7Tj?p=2&vd_source=5ef1597400e55d307f86d9eca7262dff

- 全局function
- namespace 定义一个对象存储数据
- IIFE模式
- IIFE增强

- script load

- CommonJS

- AMD/CMD

- UMD

- ESM



# ES Module

## export & import

### export

- default exports

```javascript
export default <var>
```



- named exports

```js
export let <var>
    
export {
    var1
  	var2
}
```



### import

- default import

```js
import <default_name> from "module"
```



- named import

```js
import {key1, key2} from "module"
```



## Renaming export & import

对于默认导出，我们本来就没有给他一个身份（渣男）

但是对于命名导出，我们在导出的时候就是他自己的名字。而且，导入的时候必须要指定他自己的名字，但是如果想着导入的时候不用那个名字了呢，这就要用到重命名导入。重命名导出也类似。



### renamimg export

```
export {
	var1 as re_var1,
	var2 as re_var2
}
```





原始使用

- 需要使用
  - 绝对路径
  - 相对路径
  - .js后缀名不能省略
  - script标签 需要注明type=“module”



# UMD

UMD 其实挂载到了global对象上

浏览器中就是window



