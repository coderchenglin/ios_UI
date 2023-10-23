//
//  ViewController.m
//  14_警告对话框和等待指示器
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
    // Do any additional setup after loading the view.
    
    for(int i = 0;i<2;i++)
    {
        UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        
        btn.frame = CGRectMake(100, 100+100*i, 100, 40);
        if(i == 0)
        {
            [btn setTitle:@"警告对话框" forState:UIControlStateNormal];
        }
        else if(i == 1)
        {
            [btn setTitle:@"等待指示器" forState:UIControlStateNormal];
        }
        
        btn.tag = 101+i;
        
        [btn addTarget:self action:@selector(pressBtn) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:btn];
    }
    
}

-(void) pressBtn:(UIButton *) btn
{
    if(btn.tag == 101)
    {
        
    }
    else if(btn.tag == 102)
    {
        
    }
}

@end
