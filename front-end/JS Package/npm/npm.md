## npm-exec
### npm exec
- `npm exec <pkg>`

### npm x
- `npm x <pkg>`

npm官方文档中指出`x`，其实就是`exec`的别名，通俗来讲意思就是`npm exec`、`npm x`，两个命令是完全等价的。

`npm exec <pkg>`的执行流程
- 在本地查找是否有`<pkg>`对应的npm包
	- 若找到，则运行这个包的`package.json`中`bin`字段对应的可执行文件
	- 若未找到，在远程npm仓库查找是否有`<pkg>`对应的npm包
		- 若找到，则提示是否下载到本地
		- 下载完成后，再运行这个包`package.json`中`bin`字段对应的可执行文件

同时，在执行`bin`字段有几点注意的
- 如果`bin`只有一个入口，那么可以执行
- 如果`bin`有多个入口，则寻找和包名一样的那个入口
	- 如果没找到，则`npm exec <pkg>`报错

下面用`create-vite`这个npm包举个例子：
```json
// 这是他的package.json中的字段，简单列举，省略很多
{
	"name": "create-vite"
	"bin": {
		"create-vite": "index.js",
		"cva": "index.js"
	}
	...
}
```

执行`npm exec crate-vite`这条命令后
- 首先本地查找是否有`create-vite`这个npm包
	- 找到，则运行`create-vite`这个npm包中的`package.json`中`bin`字段对应的可执行文件，即`index.js`这个文件
	- 若未找到，在远程npm仓库查找是否有`create-vite`这个包
		- 若找到，则提示是否下载到本地
		- 下载完成后，再运行这个包`package.json`中`bin`字段对应的可执行文件，即`index.js`这个文件

看了`bin`字段的内容，我们不妨在执行一下`npm exec cva`这条命令，执行流程和上面的`npm exec crate-vite`也是一样的，但是执行后我们会发现，这个命令报错了，那么为什么呢？

那么我们来分析一下：执行`npm exec cva`这条命令后
- 首先本地查找是否有`cva`这个npm包
	- 找到，则运行`cva`这个npm包中的`package.json`中`bin`字段对应的可执行文件
	- 若未找到，在远程npm仓库查找是否有`cva`这个包
		- 若找到，则提示是否下载到本地
		- 下载完成后，再运行这个包`package.json`中`bin`字段对应的可执行文件

这样我们应该就明白了，执行`npm exec cva`这条命令后，我们其实是需要执行`cva`这个包中`package.json`文件中的`bin`字段，而不是`create-vite`这个包中的`package.json`文件中的`bin`字段。

说巧不巧，npm官方库中还真有`cva`这个包，他的`package.json`文件如下：
```json
{
  "name": "cva",
  "version": "0.0.0",
  "description": "Awesome node module",
  "keywords": [
    "placeholder",
    "zce"
  ],
  "license": "MIT",
  "author": {
    "name": "zce",
    "email": "w@zce.me",
    "url": "https://zce.me"
  }
}
```
从上面我们可以看出，`cva`这个包的`package.json`中根本就没有`bin`字段，所以`npm exec cva`显然会报错。

## npx
npm文档中提到：`npx`的二进制文件在`npm` v7.0.0中被重写，而独立的`npx`包在当时已弃用。`npx`使用`npm exec`命令，而不是单独的参数解析器和安装过程。并提供了一些支持，以保持与它在以前版本中接受的参数的向后兼容性。

因此我们姑且理解 `npx`  = `npm exec`或`npm x`

所以上面的`npm exec create-vite`我们也可以使用`npx create-vite`去执行

## npm-init
### npm init
* `npm init`
* `npm init <initializer>`

### npm create
- `npm create`
- `npm create <initializer>`

### npm innit
- `npm innit`
- `npm innit <initializer>`

npm官方文档中指出`create`，`innit`其实就是`init`的别名，通俗来讲意思就是，其实`npm init`，`npm create`，`npm innit`三个命令是完全等价的。

- `npm init`/ `npm create`/ `npm innit`

这种后面没有`<initializer>`是用来创建package.json文件的

- `npm init <initializer>`/ `npm create <initializer>`/ `npm innit <initializer>`

这里的`npm init <initializer>`实际会调用`npm exec create-<initializer>`, 也相当于`npx create-<initializer>`。
我们可以把这个`<initializer>`理解为 有特殊格式包名的包 的简称，它真正的包名为`create-<initializer>`，也只有符合这种特殊格式(`create-<xxxx>`)的包才可以执行这样的命令。

再用`create-vite`这个包举例，那么此时我们也可以通过执行`npm create vite`/ `npm init vite`/ `npm innit vite`这些命令来使用这个包了。

## 总结
综上，对于举例的`create-vite`这个包我们可以有多种方法使用：
```shell
npm init vite/ npm create vite/ npm innit vite

npm exec create-vite/ npm x create-vite

npx create-vite
```

类似的例如`create-react-app`这个包我们也可以有多种方法使用：
```shell
npm init react-app/ npm create react-app/ npm innit react-app

npm exec create-react-app/ npm x create-react-app

npx create-react-app
```
不过react的脚手架略有不同，当我们直接使用`npx create-react-app`的时候它会提示我们需要指定项目目录，即`npx create-react-app <project-diretory>`，我们只需要在`npx create-react-app`后加上一个项目名就行。

相同的`create-nuxt-app`、`create-next-app`等等也是一样的原理。

> 📎 注：本博客旨在个人学习的记录备份，以及对于学习感悟、思考的分享交流，其中必定有诸多不妥之处，欢迎大家留言、评论、私信等指明错误。若有侵权请联系删除，如需转载请注明出处，谢谢🤝。