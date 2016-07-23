# OCTeach   （iOS 纯代码 项目）
# 项目地址: [GitHub](https://github.com/icefirewang/OCTeach)
 
# 第一课   开局

## 步骤
* 1 删除 项目中的 general  Main interface
* 2 创建 window
* 3 创建 root view controller  否者（'Application windows are expected to have a root view controller at the end of application launch'）崩溃
   RootViewController 使用单例模式
*4 建立 prefixHeader.pch 文件
*5 创建文件夹，整理好文件


## 知识点
 * 单例
*  prefixHeader.pch

# 第二课 Cocoapods 和 一些常用第三方库的介绍
* 1 安装CocoaPods (略过, 网上很多介绍  
可参考 
[Cocoapods 安装](http://www.tuicool.com/articles/7VvuAr3)

* 2 创建CocoaPod 文件 （用终端 cd 到你的项目目录下，命令 $pod init)
* 3 用 $pod search xxxx 搜索你要用的库
* 4 将 你要用的库 复制到你的 podfile 文件中 如（pod 'Masonry', '~> 1.0.1'）
* 5 用 $pod install 开始进行下载安装
* 6 安装完成后，关闭当前项目，换成用 .workspace 的文件，打开项目 （第三方库会存在与一个叫pods 工程中）
* 7 引入头文件 （头文件 用 <> 包含）


## 知识点
* Cocoapods ( 一个 OC 上的包管理工具）
* AFNetWorking  ( 一个目前最流行的 http 请求库, 没有之一）
* SDWebImage ( 加载 网络图片的库）
* Masonry	（ 一个代码 autolayout 的封装库）
* ReactiveCocoa ( 。。。后面解释）
* MJExtension ( Dictionary / Array 转对象的库）
* MJRefresh  ( 一个 scroll view 的上拉 下拉库，主要用于 tableview）

# 第三课  登录注册界面，及封装 http 访问类
# 步骤
* 1 创建 登录注册的 导航控制器
* 2 创建 登录注册控制器
* 3 画界面
* 4 封装 http 访问类
* 5 测试HTTP访问类 (可以用 OCFWebServer 搭建一个简易服务器）
* 6 让 工程 支持 HTTP 访问（ 默认只支持HTTPS)


## 知识点
* group name 和文件夹可以取中文名（不推荐）
* 不能在 ctrler还没有展示出来的时候，用该ctrler 进行 presentViewController
* block 
