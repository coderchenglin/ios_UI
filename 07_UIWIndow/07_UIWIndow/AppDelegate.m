//
//  AppDelegate.m
//  07_UIWIndow
//
//  Created by 差不多先生 on 2023/10/22.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    self.window.rootViewController = [[UIViewController alloc] init];
    
    self.window.backgroundColor = [UIColor blueColor];
    
    
    UIView* view = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    
    view.backgroundColor = [UIColor orangeColor];
    
    UIView* backview = [[UIView alloc] initWithFrame:CGRectMake(50, 50, 240, 360)];
    
    [backview addSubview:view];
    
    //每一个view都有一个window属性,且整个程序只有一个windoe，
    //在添加子视图时，就会吧父视图的window属性赋值给子视图
    //view.window;
    //backview.window;
    //self.window;
    
    //AppDelegate对象里，有window，window里面有视图控制器，视图控制器种有视图，每一个视图都有一个window，window里面又有视图控制器。。。。。。
    //self.window.rootViewController.view.window;
    //self.window.rootViewController.view.window.rootViewController.view.window;
    
    [self.window addSubview:backview];
    
    [self.window makeKeyAndVisible]; //visible: 可见的
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
