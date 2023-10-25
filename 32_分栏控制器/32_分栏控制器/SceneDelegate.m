//
//  SceneDelegate.m
//  32_分栏控制器
//
//  Created by 差不多先生 on 2023/10/24.
//

#import "SceneDelegate.h"
#import "VCFirst.h"
#import "VCThird.h"
#import "VCSecond.h"


@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    
    //创建控制器1
    VCFirst* vcFirst = [[VCFirst alloc] init];
    
    vcFirst.title = @"视图1";
    vcFirst.view.backgroundColor = [UIColor blueColor];
    //创建控制器2
    VCSecond* vcSecond = [[VCSecond alloc] init];
    vcSecond.view.backgroundColor = [UIColor yellowColor];
    vcSecond.title = @"视图2";
    //创建控制器3
    VCThird* vcThird = [[VCThird alloc] init];
    vcThird.view.backgroundColor = [UIColor orangeColor];
    vcThird.title = @"视图3";
    
    //创建分栏控制器对象
    UITabBarController* tbcontroller = [[UITabBarController alloc] init];
    
    tbcontroller.tabBar.barTintColor = [UIColor grayColor];
    
    //创建一个控制器数组对象
    //将所有要被分栏控制器管理的对象添加到数组中
    NSArray* arrayVC = [NSArray arrayWithObjects:vcFirst,vcSecond,vcThird, nil];
    
    //将分栏视图控制器管理数组赋值
    //这是UITabBarController类的一个属性viewControllers
    tbcontroller.viewControllers = arrayVC;
    
    //将分栏控制器作为根视图控制器
    self.window.rootViewController = tbcontroller;
    
    //设置选中的视图控制器的索引
    tbcontroller.selectedIndex = 2;
    
    if(tbcontroller.selectedViewController == vcThird)
    {
        NSLog(@"当前显示的是视图控制器3");
    }
    
    //设置分栏控制器的工具栏的透明度
    tbcontroller.tabBar.translucent = NO;

    
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
