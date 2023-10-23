//
//  ViewController.h
//  11_UISwitch控件
//
//  Created by 差不多先生 on 2023/10/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    
    //定义一个开关控件
    //可以进行状态的改变
    //开：关：两种状态可以切换
    //所有UIKit框架库中的空间均已UI开头
    //苹果官方的空间都定义在UIkit框架库中
    UISwitch* _mySwitch;
}
    
@property (retain,nonatomic) UISwitch* mySwitch;



@end

