//
//  ViewController.m
//  06_UIView的层级关系
//
//  Created by 差不多先生 on 2023/10/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIView* view01 = [[UIView alloc] init];
    
    view01.frame = CGRectMake(100, 100, 150, 150);
    
    view01.backgroundColor = [UIColor blueColor];
    
    UIView* view02 = [[UIView alloc] init];
    
    view02.frame = CGRectMake(125, 125, 150, 150);
    
    view02.backgroundColor = [UIColor orangeColor];
    
    UIView* view03 = [[UIView alloc] init];
    
    view03.frame = CGRectMake(150, 150, 150, 150);
    
    view03.backgroundColor = [UIColor greenColor];
    
    [self.view addSubview:view01];
    [self.view addSubview:view02];
    [self.view addSubview:view03];
    
    //记住bring开头和send开头就行
    [self.view bringSubviewToFront:view01];
    [self.view sendSubviewToBack:view01];
    
    //记住每一个视图下的子视图，都用一个数组subviews[]管理起来
    //01，02，03都上根视图的子视图，管理在根视图的subviews[]中
    UIView* viewFront = self.view.subviews[0];
    
    UIView* viewBack = self.view.subviews[2];
    
    if(viewBack == view03)
    {
        NSLog(@"same");
    }
    //每一个视图，只有一个父视图，但可以有多个子视图，调用方法如下：
    //view01.superview;
    //view01.subviews[];
    
    
}


@end
