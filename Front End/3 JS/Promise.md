then方法在prototype上是为了省内存

为什么不能不传 因为已经调用了

#Promise其实是一个构造函数

它的实例对象上有两个属性

- PromiseState
- PromiseResult

```
function Promise(executor){
	this.PromiseState = "pending"
  this.PromiseResult = undefined
}
```

在new Promise的时候还会执行executor函数

```
function Promise(executor){
	this.PromiseState = "pending"
  this.PromiseResult = undefined
  executor()
}
```



# Promise构造函数的参数executor

executor是一个有两个参数的函数

```
executor = function (resolve, reject) {

}
```



# executor函数的参数resolve、reject

## resolve 是一个有一个参数的函数

resolve这个函数将Promise实例对象的状态变为 fullfilled

```
resolve = function (value) {

}
```



## reject 也是一个有一个参数的函数

reject这个函数将Promise实例对象的状态变为 rejected

```
reject = function (value) {

}
```



































- PromiseState	
  - pending
    - fullfilled
    - rejected

