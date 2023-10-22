//
//  SceneDelegate.h
//  02_UILable
//
//  Created by 差不多先生 on 2023/10/22.
//

#import <UIKit/UIKit.h>

@interface SceneDelegate : UIResponder <UIWindowSceneDelegate>
//SceneDelegate 是类的名称，表示这是用于处理iOS多场景的代理类。

@property (strong, nonatomic) UIWindow * window;
//这一行代码定义了一个名为 window 的属性，用于存储应用程序的主窗口。strong 表示这是一个强引用属性，nonatomic 表示它是非原子的，用于多线程环境。UIWindow 类用于管理应用程序的主窗口。
@end

