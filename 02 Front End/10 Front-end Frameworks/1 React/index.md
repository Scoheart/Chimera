# react 渲染流程

### have no JSX

- React.createElement
- jsx
- jsx_DEV

createElement是React对象的一个属性

并且是一个method

其返回值是一个对象（虚拟DOM）



- ReactDOM.render

render是ReactDOM对象的一个属性

并且是一个method

内部调用DOM API将VDOM渲染到HTML



### JSX

- JSX

jsx全称 javascript XML

是facebook提供的语法糖



- babel转换jsx

babel将jsx转换成下面三个函数



- React.createElement
- jsx
- jsx_DEV



- ReactDOM.render

