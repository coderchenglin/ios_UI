//
//  ViewController.m
//  17_UIScrollView
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
    
    //定义并创建一个滚动视图
    //可以对视图内容进行滚屏查看
    UIScrollView* sv = [[UIScrollView alloc] init];
    
    
//    // 获取主屏幕
//    UIScreen *mainScreen = [UIScreen mainScreen];
//
//    // 获取屏幕的尺寸
//    CGRect screenBounds = mainScreen.bounds;
//
//    // 提取屏幕的宽度和高度
//    CGFloat screenWidth = CGRectGetWidth(screenBounds);
//    CGFloat screenHeight = CGRectGetHeight(screenBounds);
//
//    NSLog(@"屏幕宽度：%f, 屏幕高度：%f", screenWidth, screenHeight); //393 852

    //设置滚动视图的位置，使用矩形来定位视图位置
    sv.frame = CGRectMake(0, 0, 393, 852);
    
    //是否按照整页来滚动视图
    sv.pagingEnabled = YES;
    //是否可以开启滚动效果
    sv.scrollEnabled = YES;
    //设置画布大小，画布决定了可以滑动的范围大小，一半大于Frame的大小
    sv.contentSize = CGSizeMake(393*5, 852);
    //是否可以边缘弹动效果
    sv.bounces = YES;
    //开启横向弹动效果
    sv.alwaysBounceHorizontal = YES;
    //开启纵向弹动效果
    sv.alwaysBounceVertical = YES;
    //显示横向滚动条
    sv.showsHorizontalScrollIndicator = YES;
    //显示纵向滚动条
    sv.showsVerticalScrollIndicator = YES;
    //sv.backgroundColor = [UIColor yellowColor];
    
    for(int i = 0;i<5;i++)
    {
        NSString* strName = [NSString stringWithFormat:@"%d",i+1];
        
        UIImage* image = [UIImage imageNamed:strName];
        
        UIImageView* iView = [[UIImageView alloc] initWithImage:image];
        
        iView.frame = CGRectMake(393*i, 0, 393, 852);
        
        [sv addSubview:iView];
    }
    
    
    [self.view addSubview:sv];
}


@end
