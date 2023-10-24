//
//  VCThird.m
//  30_导航控制器切换
//
//  Created by 差不多先生 on 2023/10/24.
//

#import "VCThird.h"

@interface VCThird ()

@end

@implementation VCThird

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"视图3";
    
    self.view.backgroundColor = [UIColor greenColor];
    
    UIBarButtonItem* btnleft = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(pressBack)];
    
    self.navigationItem.leftBarButtonItem = btnleft;
    
    UIBarButtonItem* btnR = [[UIBarButtonItem alloc] initWithTitle:@"返回根" style:UIBarButtonItemStylePlain target:self action:@selector(pressRight)];
    
    self.navigationItem.rightBarButtonItem = btnR;
}

-(void) pressRight
{
    //直接返回根视图
    [self.navigationController popToRootViewControllerAnimated:YES];
}

-(void) pressBack
{
    NSLog(@"返回上一级");
    //将当前的视图控制器弹出，返回到上一级界面
    [self.navigationController popViewControllerAnimated:YES];
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
