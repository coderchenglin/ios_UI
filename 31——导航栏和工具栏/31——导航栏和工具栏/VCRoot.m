//
//  VCRoot.m
//  31——导航栏和工具栏
//
//  Created by 差不多先生 on 2023/10/24.
//

#import "VCRoot.h"
#import "VCSecond.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    self.navigationController.navigationBar.barStyle = UIBarStyleDefault;
    
    //把这个背下来！！！
    self.navigationController.navigationBar.translucent = NO;
    
    //设置导航元素项按钮文字的颜色，默认为蓝色
    //self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    
    //隐藏导航栏 默认不隐藏
    //self.navigationController.navigationBar.hidden = YES;
    //self.navigationController.navigationBarHidden = YES;
    
    self.navigationController.navigationBar.barTintColor = [UIColor orangeColor];
    
    self.title = @"根视图";
    
    UIBarButtonItem* btn = [[UIBarButtonItem alloc] initWithTitle:@"右侧按钮" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    self.navigationItem.rightBarButtonItem = btn;
    
    
    //实现工具栏，默认工具栏是隐藏的
    self.navigationController.toolbarHidden = NO;
    
    self.navigationController.toolbar.translucent = NO;
    
    UIBarButtonItem* btn01 = [[UIBarButtonItem alloc] initWithTitle:@"left" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    UIBarButtonItem* btn02 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(pressCancel)];
    
    //手动设置一个固定大小宽度的按钮
    UIBarButtonItem* btnF01 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    btnF01.width = 100;
    
    //自动计算一个有效的宽度的按钮
    //UIBarButtonItem* btnF02 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    
    NSArray* arrayBtns = [NSArray arrayWithObjects:btn01,btnF01,btn02, nil];
    
    self.toolbarItems = arrayBtns;
}

-(void) pressCancel
{
    VCSecond* vc = [[VCSecond alloc] init];
    
    [self.navigationController pushViewController:vc animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end


//工具栏和导航栏都是属于导航控制器的，导航控制器上唯一的
//工具栏上的按钮上属于视图控制器的


//这节内容还是挺多的，要好好记
