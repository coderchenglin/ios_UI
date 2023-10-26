//
//  VCSecond.h
//  38_多界面传值
//
//  Created by 差不多先生 on 2023/10/25.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

//定义代理协议，视图控制器二的协议
@protocol VCSecondDelegate <NSObject>

//定义一个协议函数，改变背景颜色
-(void) changeColor:(UIColor*) color;

@end


@interface VCSecond : UIViewController

@property (assign,nonatomic) NSInteger tag;

//定义一个代理对象
//代理对象会执行协议函数
//通过代理对象实现协议函数，达到代理对象改变本身属性的目的
//代理对象一定要实现代理协议
@property (assign,nonatomic) id<VCSecondDelegate> delegate;  //id：不管这个代理本身是什么类型的都行，<>代表，但是这个代理对象的类必须是实现了这个代理协议的

@end

NS_ASSUME_NONNULL_END
