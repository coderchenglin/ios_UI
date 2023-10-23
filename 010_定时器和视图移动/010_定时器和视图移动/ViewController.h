//
//  ViewController.h
//  010_定时器和视图移动
//
//  Created by 差不多先生 on 2023/10/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    // Do any additional setup after loading the view.
    
    //定义一个定时器对象
    //可以在每隔固定时间发送一个消息
    //通过此消息来调用相应的事件函数
    //通过此函数可在固定时间段来完成一个根据时间间隔的任务
    
    NSTimer* _timerView;
}

@property (retain,nonatomic) NSTimer* timerView;

@end

