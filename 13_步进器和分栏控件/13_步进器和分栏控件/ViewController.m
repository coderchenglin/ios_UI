//
//  ViewController.m
//  13_步进器和分栏控件
//
//  Created by 差不多先生 on 2023/10/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize stepper = _stepper;

@synthesize segControl = _segControl;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _stepper = [[UIStepper alloc] init];
    
    _stepper.frame = CGRectMake(100, 100, 80, 40);
    
    _stepper.minimumValue = 0;
    
    _stepper.maximumValue = 100;
    
    //初始值默认为0
    _stepper.value = 10;
    
    //设置步进值
    _stepper.stepValue = 1;
    
    //设置是否可以重复相应事件操作
    //如果为NO，就不能按着不动持续产生效果了
    _stepper.autorepeat = YES;
    
    //是否将步进结构通过事件函数相应出来 - 这个只有在上面的autorepeat设置为YES时才有效
    //如果设为NO，且上面的autorepeat设为YES，那么按着不动时，它的效果不会一直打印出来，只有放手以后才会打印出来
    //如果设为YES，那么整个变化的过程都会打印出来
    _stepper.continuous = NO;
    
    //添加事件函数
    [_stepper addTarget:self action:@selector(stepChange:) forControlEvents:UIControlEventValueChanged];

    
    //创建分栏控件
    _segControl = [[UISegmentedControl alloc] init];
    
    _segControl.frame = CGRectMake(10, 200, 300, 40);
    
    //添加一个按钮元素
    [_segControl insertSegmentWithTitle:@"0元" atIndex:0 animated:NO];
    [_segControl insertSegmentWithTitle:@"5元" atIndex:1 animated:NO];
    [_segControl insertSegmentWithTitle:@"10元" atIndex:2 animated:NO];
    [_segControl insertSegmentWithTitle:@"20元" atIndex:3 animated:NO];
    [_segControl insertSegmentWithTitle:@"30元" atIndex:4 animated:NO];
    
    //当前默认按钮索引设置
    _segControl.selectedSegmentIndex = 0;
    
    [_segControl addTarget:self action:@selector(segChange) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_stepper];
    [self.view addSubview:_segControl];
}

-(void) segChange
{
    NSLog(@"%ld",_segControl.selectedSegmentIndex); //选中的索引值属性
}

-(void) stepChange:(UIStepper *) st
{
    NSLog(@"step press, value = %f",st.value);
}


@end



//步进器，记住它的一些属性：minimumValue,maximumValue,Value,stepValue
//autorepeat  continuous
