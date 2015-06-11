# JCAppWorkspace
一个项目框架，展示工程的搭建过程。

workspace结构：
- JCSystemLayer

  需要被多个app使用的公共模块，封装到framework里。
  
- JCSignlePageApp

  一个App，使用了JCSystemLayer的公共模块。
  
- JCApp

  另一个App，使用了JCSystemLayer的公共模块。
  
- FrameworkProducts

  编译后输出的framework。
  
  
  
>####关于Pods中的第三方库
>framework和app中只能在一个地方导入pods的lib，我选择在app链入。
>- posfile中直接引入多个xcodeproj
>- pod install后把不需要的workspace删除，仅保留一个workspace，然后把其他工程加入到这个workspace中。
>- 在framework工程的BuildPhases-LinkBinryWithLibraries中讲libPods.a删除。
  
# JCSystemLayer
- 制作一个framework的过程

  http://years.im/Home/Article/detail/id/52.html

  其中添加一个Aggregate Target以便多人分开开发时输出framework给别的工程使用。

# JCApp 
- 在storyboard中添加对象，分别是带owner的Behavior对象和ViewModel对象。

  通过在storyboard添加对象，使对象关系更直观，且对象生命周期和ViewController生命周期同步。
  
- 通过继承Mantle中MTLModel类，使数据对象不用自己去写copying和code协议实现代码。









