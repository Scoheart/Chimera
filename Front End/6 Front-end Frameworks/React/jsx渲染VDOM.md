- jsx

通过babel插件、预设先转化成 AST 然后又通过react的插件、预设转化成了React.createElement

- React.createElement

创建虚拟DOM



VDOM的props

- 如果没有子元素
  - 则props对象身上没有children属性
- 如果有子元素
  - 子元素为DOM
    - 则props对象身上有children属性
    - 且children属性为VDOM对象 或者 数组
  - 子元素为文本节点
    - 则props对象身上有children属性
    - 且children属性为字符串文本
