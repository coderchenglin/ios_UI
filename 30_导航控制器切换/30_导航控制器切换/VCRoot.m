//
//  VCRoot.m
//  30_导航控制器切换
//
//  Created by 差不多先生 on 2023/10/24.
//

#import "VCRoot.h"
#import "VCSecond.h"
#import "VCThird.h"


@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //设置导航栏透明度
    self.navigationController.navigationBar.translucent = NO;
    
    //设置导航栏风格
    self.navigationController.navigationBar.barStyle = UIBarStyleDefault;
    
    self.view.backgroundColor = [UIColor blueColor];
    
    self.title = @"根视图";
    
    UIBarButtonItem* next = [[UIBarButtonItem alloc] initWithTitle:@"下一级" style:UIBarButtonItemStylePlain target:self action:@selector(pressNext)];
    
    self.navigationItem.rightBarButtonItem = next;
    
}

-(void) pressNext
{
    VCSecond* vcSecond = [[VCSecond alloc] init];
    
    [self.navigationController pushViewController:vcSecond animated:YES];
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
