//
//  SceneDelegate.m
//  33_分栏控制器高级
//
//  Created by 差不多先生 on 2023/10/25.
//
#import "AppDelegate.h"
#import "SceneDelegate.h"
#import "AppDelegate.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCThird.h"
#import "VCfour.h"
#import "VCfive.h"
#import "VCsix.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions
{
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    VCFirst* vc01 = [[VCFirst alloc] init];
    VCSecond* vc02 = [[VCSecond alloc] init];
    VCThird* vc03 = [[VCThird alloc] init];
    VCFour* vc04 = [[VCFour alloc] init];
    VCFive* vc05 = [[VCFive alloc] init];
    VCSix* vc06 = [[VCSix alloc] init];
    //设置背景颜色
    vc01.view.backgroundColor = [UIColor redColor];
    vc02.view.backgroundColor = [UIColor orangeColor];
    vc03.view.backgroundColor = [UIColor yellowColor];
    vc04.view.backgroundColor = [UIColor greenColor];
    vc05.view.backgroundColor = [UIColor grayColor];
    vc06.view.backgroundColor = [UIColor blueColor];
    //设置标题
    vc01.title = @"视图1";
    vc02.title = @"视图2";
    vc03.title = @"视图3";
    vc04.title = @"视图4";
    vc05.title = @"视图5";
    vc06.title = @"视图6";
    
    NSArray* arrayVC = [NSArray arrayWithObjects:vc01, vc02, vc03, vc04, vc05, vc06, nil];
    
    UITabBarController* tbc = [[UITabBarController alloc] init];
    tbc.viewControllers = arrayVC;
    
    tbc.tabBar.translucent = NO;
    tbc.tabBar.barTintColor = [UIColor greenColor];
    
    tbc.tabBar.barTintColor = [UIColor yellowColor];
    self.window.rootViewController = tbc;
    
    
    tbc.delegate = self;
}

//编辑前
-(void) tabBarController:(UITabBarController *)tabBarController willBeginCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers
{
    NSLog(@"编辑前");
}

//即将结束前
-(void) tabBarController:(UITabBarController *)tabBarController willEndCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers changed:(BOOL)changed
{
    if(changed == YES)
    {
        NSLog(@"顺序发生改变");
        NSLog(@"vcs = %@",viewControllers);
    }
    
    
    NSLog(@"即将结束前");
}

//已经结束
-(void) tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers changed:(BOOL)changed
{
    NSLog(@"已经结束");
}

//已经选中控制器对象
-(void) tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    if(tabBarController.viewControllers[tabBarController.selectedIndex] == viewController)
    {
        NSLog(@"OK1");
    }
    
    NSLog(@"选中控制器对象");
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
