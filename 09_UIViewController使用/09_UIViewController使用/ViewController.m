//
//  ViewController.m
//  09_UIViewController使用
//
//  Created by 差不多先生 on 2023/10/23.
//

#import "ViewController.h"
#import "ViewController02.h"


@interface ViewController ()

@end

@implementation ViewController

//当屏幕被点击时，调用此函数
-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    ViewController02* vc = [[ViewController02 alloc] init];
    
    //显示一个新的视图控制器到屏幕上
    //p1:新的视图控制器对象
    //p2：是否使用动画切换效果
    //p3: 却换结束后功能调用，不需要传nil值即可
    
    [self dismissViewControllerAnimated:YES completion:nil];
    [self presentViewController:vc animated:YES completion:nil];
    
}


//第一次程序加载视图时调用，只会加载一次
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor blueColor];
    
    NSLog(@"viewDidLoad! 第一次加载视图！");
    
}

//视图分为：1.显示前 2.正在处于显示状态 3.已经被隐藏
//参数：表示是否用动画切换后显示
//后面这些可以加载很多次
-(void) viewWillAppear:(BOOL)animated
{
    NSLog(@"viewWillAppear");
}

-(void) viewWillDisappear:(BOOL)animated
{
    NSLog(@"viewWillDisappear");
}

-(void) viewDidAppear:(BOOL)animated
{
    NSLog(@"viewDidAppear");
}

-(void) viewDidDisappear:(BOOL)animated
{
    NSLog(@"viewDidDisappear");
}



@end
