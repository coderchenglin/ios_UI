//
//  ViewController.m
//  11_UISwitch控件
//
//  Created by 差不多先生 on 2023/10/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//同步属性和成员变量
@synthesize mySwitch = _mySwitch;


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loadingr the view.
    
    _mySwitch = [[UISwitch alloc] init];
    //UISwitch控件，x，y值可以改，开关大小改不了
    _mySwitch.frame = CGRectMake(100, 200, 80, 40);
    //_mySwitch.backgroundColor = [UIColor blueColor];
    
    _mySwitch.on = YES;
    
    [_mySwitch setOn:YES animated:YES];
    
    [self.view addSubview:_mySwitch];
    
    [_mySwitch setOnTintColor:[UIColor redColor]];
    
    [_mySwitch setThumbTintColor:[UIColor greenColor]];
    
    [_mySwitch addTarget:self action:@selector(swChange:) forControlEvents:UIControlEventValueChanged];
    
    //好像没用了
    [_mySwitch setTintColor:[UIColor purpleColor]];
    
    //self.view.backgroundColor = [UIColor blueColor];
}

-(void) swChange:(UISwitch *) sw
{
    //NSLog(@"按钮改变");
    if(sw.on == YES)
    {
        NSLog(@"open");
    }
    else
    {
        NSLog(@"close");
    }
}


@end
