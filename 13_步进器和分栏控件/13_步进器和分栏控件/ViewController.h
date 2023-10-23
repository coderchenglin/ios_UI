//
//  ViewController.h
//  13_步进器和分栏控件
//
//  Created by 差不多先生 on 2023/10/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //定义步进器对象
    //按照一定的数字来调整某个数据
    UIStepper* _stepper;
    
    UISegmentedControl* _segControl;
}

//属性的定义
@property (retain,nonatomic) UIStepper*          stepper;
@property (retain,nonatomic) UISegmentedControl* segControl;

@end

