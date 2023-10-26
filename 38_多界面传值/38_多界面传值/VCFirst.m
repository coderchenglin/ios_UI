//
//  VCFirst.m
//  38_多界面传值
//
//  Created by 差不多先生 on 2023/10/25.
//

#import "VCFirst.h"
#import "VCSecond.h"


@interface VCFirst ()

@end

@implementation VCFirst

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  
}

-(void) changeColor:(UIColor *)color
{
    self.view.backgroundColor = color;
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end


//实现代理的方法：
//1.首先在视图控制器二中，定义一个代理协议，代理方法，并且定义一个代理对象
//2.在视图控制器一中，继承这个代理协议，并且实现这个方法
//3.在视图控制器一中，让自己成为视图控制器二的代理
//4.在视图控制器二中，用代理（视图控制器一）对象，调用代理方法,从而改变了 视图控制器一

//也就是说这个事件是在哪个类发起的，哪个类就定义这个协议，并且使用代理对象去调用这个方法
//然后代理对象要让自己成为代理，并且继承协议，实现协议
