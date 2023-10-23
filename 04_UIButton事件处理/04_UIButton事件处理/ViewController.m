//
//  ViewController.m
//  04_UIButton事件处理
//
//  Created by 差不多先生 on 2023/10/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void) creatBtn
{
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn.frame = CGRectMake(150, 200, 200, 200);
    
    [btn setTitle:@"btn" forState:UIControlStateNormal];
    
    //向按钮添加事件函数
    //函数声明 ： - (void)addTarget:(nullable id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents;
    [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
    btn.tag = 101;

    [btn setTitle:@"按下btn" forState:UIControlStateHighlighted];

    UIButton* btn02 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn02.frame = CGRectMake(150, 450, 200, 200);
    [btn02 setTitle:@"btn" forState:UIControlStateNormal];
    [btn02 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
    btn02.tag = 102;
    
    [btn setTitle:@"按下btn02" forState:UIControlStateHighlighted];
    
    
    [self.view addSubview:btn];
    [self.view addSubview:btn02];
}

-(void) pressBtn: (UIButton *)btn
{
    if(btn.tag == 101)
        NSLog(@"按钮被按下");
    else if(btn.tag == 102)
        NSLog(@"@按钮02被按下");
}




- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self creatBtn];
}


@end
