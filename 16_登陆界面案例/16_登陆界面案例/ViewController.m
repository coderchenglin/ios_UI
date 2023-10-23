//
//  ViewController.m
//  16_登陆界面案例
//
//  Created by 差不多先生 on 2023/10/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    //用户名提示标签创建
    _lbUserName = [[UILabel alloc] init];
    _lbUserName.frame = CGRectMake(20, 60, 80, 40);
    _lbUserName.text = @"userName";
    _lbUserName.font = [UIFont systemFontOfSize:20];
    _lbUserName.textAlignment = NSTextAlignmentLeft;
    
    //
    
    
}


@end


//这节就复习课，没必要敲
