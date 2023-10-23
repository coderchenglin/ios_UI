//
//  ViewController02.m
//  09_UIViewController使用
//
//  Created by 差不多先生 on 2023/10/23.
//

#import "ViewController02.h"

@interface ViewController02 ()

@end

@implementation ViewController02

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor orangeColor];
    
}

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //使当前的控制器消失掉
    //p1:是否有动画效果
    //p2:结束后是否调用功能block块操作

    [self dismissViewControllerAnimated:YES completion:nil];
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
