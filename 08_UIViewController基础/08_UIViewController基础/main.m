//
//  main.m
//  08_UIViewController基础
//
//  Created by 差不多先生 on 2023/10/23.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[])
{
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    
    //参数3:传入一个主框架类类名，如果参数为nil，系统会自动用默认的框架类作为主框架类名
    //参数4:主框架的代理类对象名字
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
