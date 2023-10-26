//
//  VCThird.m
//  38_多界面传值
//
//  Created by 差不多先生 on 2023/10/25.
//

#import "VCThird.h"
#import "VCSecond.h"

@interface VCThird ()

@end

@implementation VCThird

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //self.view.backgroundColor = [UIColor redColor];
}

//推出视图控制器二
-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    VCSecond* vc = [[VCSecond alloc] init];
    
    vc.view.backgroundColor = [UIColor orangeColor];
    
    //让自己成为视图控制器二的代理对象
    vc.delegate = self;
    
    [self.navigationController pushViewController:vc animated:YES];
}

-(void) changeColor:(UIColor *)color
{
    self.view.backgroundColor = color;
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
