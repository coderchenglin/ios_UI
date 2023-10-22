//
//  AppDelegate.m
//  02_UILable
//
//  Created by 差不多先生 on 2023/10/22.
//

#import "AppDelegate.h"

//这是一个类扩展
@interface AppDelegate ()

@end

//类的实现部分
@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    //你可以在这个方法中执行一些应用程序启动后的自定义操作
    //这个方法在应用程序启动后立即调用。它是应用程序的入口点，用于执行应用程序的初始化和设置。
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
//    这是处理iOS 13及更高版本中多场景（Multiple Scene）的方法。它用于创建新场景会话的配置。每个场景可以是应用程序的一个部分，如主屏幕或一个弹出视图。这个方法允许你为每个场景选择合适的配置。
    //这个方法是iOS 13及更高版本引入的，用于处理多场景（Multiple Scene）的情况。它在创建新场景会话时自动调用。
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
//    这是处理iOS 13及更高版本中多场景的方法，用于处理用户放弃（discard）场景会话的情况。如果用户关闭了某个场景，你可以在这个方法中释放与该场景相关的资源。
    //这个方法也是用于多场景情况，当用户关闭一个或多个场景时自动调用。
}


@end
