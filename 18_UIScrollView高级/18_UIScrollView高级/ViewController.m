//
//  ViewController.m
//  18_UIScrollView高级
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
    
    _scrollView = [[UIScrollView alloc] init];
    
    _scrollView.frame = CGRectMake(10, 50, 300, 400);
    
    _scrollView.bounces = NO;
    
    //是否允许通过点击屏幕让滚动视图相应事件
    //YES：滚动视图允许接受触碰事件
    //NO： 不允许
    _scrollView.userInteractionEnabled = YES;
    
    _scrollView.contentSize = CGSizeMake(300, 400*9);
    
    for(int i = 0; i <9 ;i++)
    {
        NSString* strName = [NSString stringWithFormat:@"_%d",i+1];
        UIImage* image = [UIImage imageNamed:strName];
        
        UIImageView* iView = [[UIImageView alloc] init];
        
        iView.image = image;
        
        iView.frame = CGRectMake(0, 400*i, 300, 400);
        
    }
    
    [self.view addSubview:_scrollView];
    
    _scrollView.pagingEnabled = NO;
    
    //滚动视图画布的偏移位置
    //功能：决定画布显示的最终图像结果
    _scrollView.contentOffset = CGPointMake(0, 0);
    
    //！！！不要忘了设置代理
    _scrollView.delegate = self;
}

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //ScrollView可以通过contentOffset，偏移量，调整到任意我想到的位置
    _scrollView.contentOffset = CGPointMake(0, 0);
    
    //让滚动视图移动到指定位置，动画移动
    [_scrollView scrollRectToVisible:CGRectMake(0, 0, 300, 400) animated:YES];
}



@end


//滚动视图也有UIScrollView协议函数，这个地方也要使用视图控制器来进行代理
//也就是说，代理函数都需要一个类进行代理
