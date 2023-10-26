//
//  VCRoot.m
//  34_照片墙案例
//
//  Created by 差不多先生 on 2023/10/25.
//

#import "VCRoot.h"
#import "VCImageShow.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"照片墙";
    
    self.navigationController.navigationBar.translucent = NO;
    
    UIScrollView* sv = [[UIScrollView alloc] init];
    
    //设置位置大小
    sv.frame = CGRectMake(5, 10, 350, 600);
    //设置画布大小
    sv.contentSize = CGSizeMake(350, 600*1.5);
    //打开交互事件
    sv.userInteractionEnabled = YES;
    
    //隐藏滚动条
    sv.showsVerticalScrollIndicator = NO;
    
    //隐藏导航栏
    //self.navigationController.navigationBarHidden = YES;
    
    for(int i = 0;i<12;i++)
    {
        NSString* strName = [NSString stringWithFormat:@"%d",i+1];
        
        UIImage* image = [UIImage imageNamed:strName];
        
        UIImageView* iView = [[UIImageView alloc]initWithImage:image];
        
        iView.frame = CGRectMake(3+(i%3)*110, (i/3)*160+10, 100, 150);
        
        [sv addSubview:iView];
        
        //开启交互模式
        iView.userInteractionEnabled = YES;
        
        //创建点击手势
        UITapGestureRecognizer* tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pressTap:)];
        //单词点击
        tap.numberOfTapsRequired = 1;
        //单个手指
        tap.numberOfTouchesRequired = 1;
        
        [iView addGestureRecognizer:tap];
        
        //图像对象的tag值
        iView.tag = 101 + i;
    }
    
    [self.view addSubview:sv];
    
}

//这个函数会把你点击的视图带过来
//-(void) pressTap:(UITapGestureRecognizer*)tap
//{
//    UIImageView* imageView = (UIImageView*)tap.view;
//
//    //创建显示视图控制器
//    VCImageShow* imageShow = [[VCImageShow alloc] init];
//    //点击的图像视图赋值
//    imageShow.image = imageView.image;
//    //将控制器推出
//    [self.navigationController pushViewController:imageShow animated:YES];
//
//
//}

-(void) pressTap:(UITapGestureRecognizer*) tap
{
    UIImageView* imageView = (UIImageView*)tap.view;
    
    VCImageShow* imageShow = [[VCImageShow alloc]init];
    
    imageShow.imageTag = imageView.tag;
    
    [self.navigationController pushViewController:imageShow animated:YES];
    
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
