//
//  ViewController.m
//  05_UIView
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
    
    UIView* view = [[UIView alloc] init];
    
    view.frame = CGRectMake(100, 100, 100, 200);
    
    view.backgroundColor = [UIColor blueColor];
    
    //将新建的视图，添加到父亲视图上
    //1.将新建的视图显示到屏幕上
    //2.将视图作为父亲视图的子视图管理起来
    [self.view addSubview:view];
    
    //是否隐藏视图
    view.hidden = NO; // 默认为NO：显示
    
    //视图透明度 0～1
    //1为不透明 0为透明
    view.alpha = 0.4;
    
    //？？
    view.opaque = NO;
    
    //将自己从父亲视图上删除掉
    //[view removeFromSuperview];
    
    self.view.backgroundColor = [UIColor redColor];
}


@end
