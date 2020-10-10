## SwiftUI

基础

Text



VStack, HStack, ZStack

Image的任何调整图像尺寸的方法之前都必须先前置一个resizable方法，否则不生效



### 协议

ObservableObject

遵循`ObservableObject`协议的类可以使用SwiftUI的`@Publish`属性包装器自动发布属性的变化，以便使用该类的实例的任何视图能够自动重新调用`body`属性，保持界面与数据一致

每个遵循 `ObservableObject` 的类都自动获得一个叫 `objectWillChange` 的属性

`objectWillChange`: 与`@Publish`相似，通知正在观察的视图被观察的对象即将有重要的事情发生（在即将做出改变时发生）



### 属性包装器

SwiftUI使用不可变的结构类型描述视图层次结构

属性包装器允许我们在SwiftUI视图中声明它们，但将数据存储在声明它的视图之外



@State //若属性更新，界面也同步更新



some View：表示只要他的行为类似于View，就可以是任何类型，任何结构



