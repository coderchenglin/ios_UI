//
//  VCFirst.m
//  32_分栏控制器
//
//  Created by 差不多先生 on 2023/10/25.
//

#import "VCFirst.h"

@interface VCFirst ()

@end

@implementation VCFirst

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //创建一个分栏按钮对象
    //参数一：文字
    //参数二：显示图片图标
    //参数三：设置按钮的tag值
    UITabBarItem* tabBarItem = [[UITabBarItem alloc]initWithTitle:@"微信" image:nil tag:101];
    
    //按钮右上角的提示信息
    //通常用来提示未读的信息
    tabBarItem.badgeValue = @"22";
    
    self.tabBarItem = tabBarItem;
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
