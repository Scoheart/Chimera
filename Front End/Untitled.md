# 软件/网站/APP/小程序？B/S C/S? 前端/后端？前台/后台？思绪紊乱！😵‍💫

## Software 软件
### What is software？什么是软件？
#### 百度百科
计算机软件是与计算机系统操作有关的计算机程序、规程、规则，以及可能有的文件、文档及数据。

#### Wikipedia 维基百科
Software is *a set of computer programs* and *associated documentation* and *data*.

我们可以发现三个关键词：
- a set of computer programs            一套计算机程序
- associated documentation               相关的文档
- data                                                      数据

那么，我们尚且可以认为软件就是 一些计算机程序+相关的一些文档+数据 的集合。

### Software Types 软件的种类
软件的分类方式有很多种，不同的分类方式所呈现的结果各不相同，我们可以大体了解一些。

>Purpose, or domain of use 根据用途或者使用领域划分
#### System software 系统软件
##### Operating Systems 操作系统
操作系统其中分类又复杂多样，许多操作系统制造者对它涵盖范畴的定义也不尽一致。加之其也是一门重要学科，这里简单概述，姑且从这几个方面认知其种类。
###### 个人计算机操作系统
- Windows
- MacOS
- Linux
###### 移动设备操作系统
- IOS
- Android

##### Device drivers 设备驱动
设备驱动是一种可以使计算机和设备进行相互通信的特殊程序。深入来说，它也有很多种类与范畴。这里也只是简单概述一下。例如：网卡驱动，声卡驱动，鼠标驱动等等

##### Utilities 工具软件
工具软件或者说实用软件，可以说是帮助我们配置，优化，维护计算机的软件。不言而喻，深入学习的话，它亦是种类繁多。一样举几个例子：系统监视器，磁盘清理工具，任务管理器等等。

#### Application software 应用软件
应用软件是为了某种特定用途开发的软件，比如我们经常使用的Office，微信，QQ等等。

#### Malicious software / malware 恶意软件
恶意软件通常是为了危害，损坏计算机而开发的软件，恶意软件与电脑相关的犯罪相关系，尽管一些恶意程序可能被设计为用于恶作剧。在我看来，我们作为计算机领域的学习者，应当推动这个领域往积极向上的一面发展。

### Software Architecture 软件架构
>这里尚且引用阮一峰老师的原文
https://www.ruanyifeng.com/blog/2016/09/software-architecture.html

## 网络架构模式
简单来说，B/S架构就是网站，用浏览器就能打开浏览，不用安装。C/S架构就是手机上的APP或者PC端的软件，你必须要安装了才能使用。
### B/S Browser/Server 浏览器/服务器模式
B/S架构可以理解为网站，例如淘宝的官网，学校的官网等我们只需要有浏览器就可以访问。这种架构下，用户工作界面通过浏览器即可实现，极少部分事物逻辑在前端（Brower）实现。

### C/S Client/Server 客户端/服务器模式
C/S架构则是我们需要安装客户端应用，比如我们要使用QQ，微信，需要先安装才可以使用。C/S 结构通常采取两层结构。服务器负责数据的管理，客户机负责完成与用户的交互任务。

## 前后端
### 前端
前端通俗一点讲就是制作网页的，“切图仔”，把在应用程序或网站的屏幕上看到的所有内容呈现出来，将UI设计师的设计图通过代码编程变成用户可交互的网页，都属于前端工作的范畴。

### 后端
后端是程序逻辑发生的地方。后端对应业务逻辑代码，或者数据库交互等，通俗一点讲，就是数据的增删改查，对数据进行一些业务处理，从数据库中提取数据并将其传回到前端展示在页面上，都属于后端工作范畴。


## 前后台
前台和后台对应，前台指给用户看的界面，比如平时逛的淘宝网，掘金，这都属于前台，而后台往往就是管理系统，配置前台资源怎么展示的系统。前台也有前端和后端，后台也有前端和后端，他们分别是独立的系统。
### 前台
比如一个酒店系统，它的前台系统主要是用户登录注册，展示酒店各种房间（例如有双人房，单人房，麻将房）。可以通过网站或者app展示，同时前台系统是包括它自己的前端，和后端。

### 后台
典型的就是后台管理系统，还是这个酒店系统，上面说过他的前台主要起展示作用，那么后台则主要是管理作用。是管理员对于不同房间的管理，也就是一系列的增删改查操作，比如现在新增一个类型的房间（好比：电竞房），而此时前台展示界面是没有这个房间的信息的，而新增之后，前台展示给用户的界面就多了一种叫电竞房的房型。

## 网站
那么通过上面的阐述，我的理解是，网站就是B/S架构的产物。可以将其划分为：
- pc端网站
- 移动端网站

两者的区别，简单举例就是UI样式的设计不同，比如pc端的导航栏可能是全部展开的，而移动端由于画面大小限制，就让导航栏隐藏了。这里又有一些划分：
### 静态网站
静态网站，我们可以理解，每个人看到的都是一样的，典型的就是博客。比如我们用vitepress、hexo、hugo、Gatsby这些静态网站生成工具，通过Github Pages，Netlify等部署的博客。无论何时，无论何人，点击我们的网站，进去看的的都是同样的博客内容。

### 动态网站
动态网站，我们可以理解，每个人看到的都是不一样的，典型的就是淘宝。会根据每个人的喜好，生成不同的界面，比如你喜欢倒腾电子产品，那你的淘宝推荐展示的就大多数是电脑、手机、CPU、显卡这些电子产品，而你女朋友喜欢化妆品，那她的首页就基本都是口红、隔离霜、保湿水乳，精华等等。

## APP
同样，那么APP就是C/S架构的产物。也可以将其划分为：
- 桌面端APP
	- Windows
	- MacOS
	- Linux
- 移动端APP
	- IOS
	- Android

简单理解就是软件在安装个人计算机上或者是在手机这种移动设备上，同时呢个人计算机又有很多不同的操作系统，Windows，Mac，Linux，移动设备一样，IOS，Andriod等。不同操作系统的软件开发方式又不同。这里有一些划分：
### 桌面应用开发
#### 传统桌面软件开发框架
- QT
- wxWidgets
- GTK
- FLTK
- Swing
- JavaFX

#### 新兴桌面软件开发框架

- MAUI
- Flutter Desktop
- Compose Multiplatform

#### 基于浏览器桌面软件开发框架

- Electron
- NW.js
- CEF
- Sciter
- WebView
- Tauri

#### 即时渲染桌面软件开发框架

- Dear ImGui
- Nuklear
- RmIUi

### 移动应用开发
#### Native APP 原生开发
- IOS 使用Object-C / Swift
- Android 使用Kotlin / Java
- Windows Phone 使用.NET

#### Web APP H5开发
- HTML
- CSS
- JS

#### Hybrid APP 混合开发（原生+H5）
混合开发（Hybrid App开发），是指在开发一款App产品的时候，为了提高效率、节省成本而利用原生与H5的开发技术的混合应用。通俗点来说，这就是网页的模式，通常由“HTML5云网站+APP应用客户端”两部份构成。
- React-Native
- Weex
- Flutter

## mini program 小程序
那么小程序究竟是B/S架构还是C/S架构?

### 小程序开发
#### 原生开发
小程序平台：
- 微信
- QQ
- 支付宝
- 飞书
- 钉钉
- 京东
- 快手
- 抖音
#### 框架开发
小程序框架：
- uniapp
- taro
- mpvue
- wepy 



> 📎 注：本博客旨在个人学习的记录备份，以及对于学习感悟、思考的分享交流，其中必定有诸多不妥之处，欢迎大家留言、评论、私信等指明错误。若有侵权请联系删除，如需转载请注明出处，谢谢🤝。


## References 参考资料
1. https://en.wikipedia.org/wiki/Software
2. https://zh.wikipedia.org/zh-my/%E8%BD%AF%E4%BB%B6
3. https://en.wikipedia.org/wiki/Utility_software
4. https://zh.wikipedia.org/wiki/%E8%BD%AF%E4%BB%B6%E6%9E%B6%E6%9E%84
5. https://zh.wikipedia.org/wiki/%E6%93%8D%E4%BD%9C%E7%B3%BB%E7%BB%9F#%E5%A4%A7%E5%9E%8B%E9%9B%BB%E8%85%A6
6. https://baike.baidu.com/item/%E8%AE%A1%E7%AE%97%E6%9C%BA%E8%BD%AF%E4%BB%B6/223688
7. https://baike.baidu.com/item/%E5%89%8D%E7%AB%AF%E5%BC%80%E5%8F%91/10009024
8. https://www.bilibili.com/video/BV1d7411p7RF/?p=2&vd_source=5ef1597400e55d307f86d9eca7262dff
9. https://www.bilibili.com/video/BV1CR4y177CG/?spm_id_from=333.788&vd_source=5ef1597400e55d307f86d9eca7262dff
10. https://www.yuque.com/frank-93a7b/fuck/ii1eba#Ye6mx
11. https://www.freecodecamp.org/chinese/news/front-end-developer-vs-back-end-developer-definition-and-meaning-in-practice/
12. https://zhuanlan.zhihu.com/p/554334177
13. https://www.zhihu.com/question/19552601
14. https://www.techtarget.com/searchapparchitecture/definition/software
15. https://book.itheima.net/course/223/1277519158031949826/1277528722299166721
16. https://www.ruanyifeng.com/blog/2016/09/software-architecture.html
17. https://juejin.cn/pin/6844910401969192973
18. https://blog.csdn.net/agora_cloud/article/details/126065405?spm=1001.2101.3001.6661.1&utm_medium=distribute.pc_relevant_t0.none-task-blog-2%7Edefault%7ECTRLIST%7ERate-1-126065405-blog-114446143.235%5Ev26%5Epc_relevant_default_base1&depth_1-utm_source=distribute.pc_relevant_t0.none-task-blog-2%7Edefault%7ECTRLIST%7ERate-1-126065405-blog-114446143.235%5Ev26%5Epc_relevant_default_base1&utm_relevant_index=1
19. https://www.bilibili.com/video/BV1Kr4y1u7Yx/?vd_source=5ef1597400e55d307f86d9eca7262dff
20. https://www.bilibili.com/video/BV1Pt4y1n7bD/?spm_id_from=333.337.search-card.all.click&vd_source=5ef1597400e55d307f86d9eca7262dff
21. https://www.finclip.com/news/f/46025.html
22. https://zhuanlan.zhihu.com/p/360888621
23. https://developer.aliyun.com/article/848007?spm=5176.26934562.main.8.1a98339ebRi4sl
24. https://blog.csdn.net/fesfsefgs/article/details/106271472
