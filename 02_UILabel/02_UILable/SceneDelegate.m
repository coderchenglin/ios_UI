//
//  SceneDelegate.m
//  02_UILable
//
//  Created by 差不多先生 on 2023/10/22.
//

#import "SceneDelegate.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    //这个方法在窗口场景将要连接到会话时调用。在这个方法中，你可以配置和连接应用程序的主窗口（window）到提供的窗口场景（scene）。通常，如果你使用了故事板（Storyboard），window 属性将自动初始化并附加到窗口场景。这个方法允许你在窗口场景连接时进行一些自定义配置。
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    //这个方法在窗口场景即将被系统释放时调用。通常，这发生在场景进入后台或其会话被丢弃后的短时间内。在这个方法中，你可以释放与窗口场景关联的资源，以便下次场景连接时可以重新创建这些资源。
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    //这个方法在窗口场景从非活动状态切换到活动状态时调用。你可以使用这个方法来重新启动在场景非活动时暂停或未开始的任务。
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
//    这个方法在窗口场景即将从活动状态切换到非活动状态时调用。这可能发生在临时中断时，例如来电。
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
    //这个方法在窗口场景从后台切换到前台时调用。你可以使用这个方法来还原在进入后台时所做的更改。
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
    //这个方法在窗口场景从前台切换到后台时调用。你可以使用这个方法来保存数据、释放共享资源，并存储足够的场景特定状态信息，以便将场景还原到其当前状态。
}


@end
