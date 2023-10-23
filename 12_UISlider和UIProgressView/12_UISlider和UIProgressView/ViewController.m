//
//  ViewController.m
//  12_UISlider和UIProgressView
//
//  Created by 差不多先生 on 2023/10/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize slider = _slider;

@synthesize pView = _pView;


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _progressView = [[UIProgressView alloc] init];
    
    _progressView.frame = CGRectMake(50, 100, 200, 400);
    
    //进度条默认颜色为蓝色
    _progressView.progressTintColor = [UIColor greenColor];
    
    //进度条剩下位置颜色，默认为灰色
    _progressView.trackTintColor = [UIColor blackColor];
    
    //self.view.backgroundColor = [UIColor whiteColor];
    
    //（这个属性比较重要）默认进度为0
    _progressView.progress = 0.5;
    
    _progressView.progressViewStyle = UIProgressViewStyleDefault;
    
    
    _slider = [[UISlider alloc] init];
    
    _slider.frame = CGRectMake(10, 200, 300, 40);
    
    //设置滑动条最大值 - 可以为负值
    _slider.maximumValue = 100;
    
    //设置滑动条最小值 - 可以为负值
    _slider.minimumValue = 0;
    
    //设置滑动条的滑块位置 - 这个取决于上面的最大值和最小值的相对位置
    _slider.value = 30;
    
    //左侧滑条背景颜色
    _slider.minimumTrackTintColor = [UIColor blueColor];
    //右侧滑条背景颜色
    _slider.maximumTrackTintColor = [UIColor greenColor];
    //设置滑块的颜色
    _slider.thumbTintColor = [UIColor orangeColor];
    
    //对滑动条添加事件函数
    [_slider addTarget:self action:@selector(pressSlider) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_progressView];
    [self.view addSubview:_slider];
}

-(void) pressSlider
{
    _progressView.progress =(_slider.value-_slider.minimumValue)/(_slider.maximumValue-_slider.minimumValue);
    
    NSLog(@"value = %f",_slider.value);
}
@end



//1.进度条是被动的，只能受到别人的影响，不能主动添加事件
//2.实现让进度条随着滑动条的滑动，跟着发生变化

//进度条中有一个属性值 progress，要记住


//这一节很简单，记住进度条和滑动条的属性和使用方法就行
