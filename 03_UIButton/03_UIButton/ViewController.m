//
//  ViewController.m
//  03_UIButton
//
//  Created by 差不多先生 on 2023/10/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void) createUIRectButton
{
    //UIButton只能，必须，使用工厂方法，不能使用alloc init创建对象
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    //UILabel* label = [[UILabel alloc] init];
    //UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(x, y, width, height)];
    
    btn.frame = CGRectMake(100, 200, 200, 80);
    
    [btn setTitle:@"btn01" forState:UIControlStateNormal];
    
    [btn setTitle:@"btn按下" forState:UIControlStateHighlighted];
    
    btn.backgroundColor = [UIColor grayColor];
    
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    [btn setTitleColor:[UIColor orangeColor] forState:UIControlStateHighlighted];
    
    
    //风格颜色
    [btn setTintColor:[UIColor whiteColor]];
    
    //没有.font这个东西
    //btn.font = [UIFont buttonFontSize:36];
    btn.titleLabel.font = [UIFont systemFontOfSize:40];
    
    [self.view addSubview:btn];
}

//创建1个可以显示图片的按钮
- (void)createImageBtn
{
    UIButton* btnImage = [UIButton buttonWithType:UIButtonTypeCustom];
    
    btnImage.frame = CGRectMake(100, 300, 200, 150);
    
    UIImage* icon01 = [UIImage imageNamed:@"btn02"];
    
    UIImage* icon02 = [UIImage imageNamed:@"btn03"];
    
    [btnImage setImage:icon01 forState:UIControlStateNormal];
    
    [btnImage setImage:icon02 forState:UIControlStateHighlighted];
    
    [self.view addSubview:btnImage];
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self createUIRectButton];
    
    [self createImageBtn];
    
}


@end


//总结：
//1.UIButton必须使用类方法创建，无法使用alloc init来创建实例对象
//UIButton 无法使用 alloc 和 init 来创建对象是因为 UIButton 是 UIKit 框架中的一个控件类，它通常需要通过工厂方法（Factory Method）来创建，而不是使用标准的 alloc 和 init 初始化方法。
//UIButton继承与UIControl，UIControl继承于UIView


//2.这节学了两种按钮，一种是文字（普通）按钮，一种是图片按钮
