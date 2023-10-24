//
//  SuperView.m
//  26_手动布局子视图
//
//  Created by 差不多先生 on 2023/10/24.
//

#import "SuperView.h"

@implementation SuperView

-(void) creatSubViews
{
    _view01 = [[UIView alloc] init];
    _view01.frame = CGRectMake(0, 0, 40, 40);
    
    _view02 = [[UIView alloc] init];
    _view02.frame = CGRectMake(self.bounds.size.width-40, 0, 40, 40);
    
    _view03 = [[UIView alloc] init];
    _view03.frame = CGRectMake(self.bounds.size.width-40, self.bounds.size.height-40, 40, 40);
    
    _view04 = [[UIView alloc] init];
    _view04.frame = CGRectMake(0, self.bounds.size.height-40, 40, 40);
    
    _view05 = [[UIView alloc] init];
    _view05.frame = CGRectMake(0, 0, self.bounds.size.width, 40);
    _view05.center = CGPointMake(self.bounds.size.width/2, self.bounds.size.height/2);
    
    NSLog(@"%lf",self.bounds.size.height);
    
    _view01.backgroundColor = [UIColor orangeColor];
    _view02.backgroundColor = [UIColor orangeColor];
    _view03.backgroundColor = [UIColor orangeColor];
    _view04.backgroundColor = [UIColor orangeColor];
    _view05.backgroundColor = [UIColor orangeColor];
    
    [self addSubview:_view01];
    [self addSubview:_view02];
    [self addSubview:_view03];
    [self addSubview:_view04];
    [self addSubview:_view05];
    
    
    //下面这是自动布局子视图
    _view02.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin;
    _view03.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleTopMargin;
    _view04.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
    _view05.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;


    //这里为什么这里用｜符号？
    
//    | 符号用于执行位运算，通常用于设置多个选项或标志的组合。这是因为 UIViewAutoresizing 枚举值是按位组合的。
    
//    typedef NS_OPTIONS(NSUInteger, UIViewAutoresizing) {
//        UIViewAutoresizingNone                 = 0,
//        UIViewAutoresizingFlexibleLeftMargin   = 1 << 0,
//        UIViewAutoresizingFlexibleWidth        = 1 << 1,
//        UIViewAutoresizingFlexibleRightMargin  = 1 << 2,
//        UIViewAutoresizingFlexibleTopMargin    = 1 << 3,
//        UIViewAutoresizingFlexibleHeight       = 1 << 4,
//        UIViewAutoresizingFlexibleBottomMargin = 1 << 5
//    };
    
    
}

//重点！
//当需要重新布局时调用此函数
//通过此函数重新设定子视图的位置
//手动调整子视图的位置
//（这个方法是系统发现视图尺寸发生变化时自动调用的，我只是进行了重写）
//-(void) layoutSubviews
//{
//    _view01.frame = CGRectMake(0, 0, 40, 40);
//    _view02.frame = CGRectMake(self.bounds.size.width-40, 0, 40, 40);
//    _view03.frame = CGRectMake(self.bounds.size.width-40, self.bounds.size.height-40, 40, 40);
//    _view04.frame = CGRectMake(0, self.bounds.size.height-40, 40, 40);
//}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end


//重点1: -（void）layoutSubviews


/*
 layoutSubviews函数是什么时候调用的呢，是如何识别它让他自动调用的呢？
 
 `layoutSubviews` 是 `UIView` 类中的一个方法，用于管理视图的布局。该方法是在以下情况下被调用的：
 
 1. **首次显示视图**：当视图首次显示在屏幕上时，系统会自动调用 `layoutSubviews` 方法来完成布局。
 
 2. **视图的尺寸发生变化**：如果视图的尺寸发生变化，例如由于设备旋转、视图层次结构变化或手动调整视图的尺寸，系统也会自动调用 `layoutSubviews` 以重新布局视图。
 
 3. **手动调用**：你也可以手动调用 `layoutSubviews` 方法来强制视图重新布局。
 
 在 iOS 开发中，`layoutSubviews` 方法通常被用来调整视图内部子视图的布局，确保它们适应父视图的尺寸变化。你可以重写这个方法，自定义子视图的位置和大小，以满足你的布局需求。
 
 系统会自动识别何时调用 `layoutSubviews`，你不需要手动触发它。当需要更新视图的布局时，系统会在适当的时机自动调用这个方法。
 
 举个例子，当你在一个 `UIViewController` 中旋转设备时，系统会自动检测到设备方向的变化，然后调用视图控制器的 `viewWillTransition:toSize:withTransitionCoordinator:` 方法，最终会触发相应视图的 `layoutSubviews` 方法，以确保视图正确适应新的方向和尺寸。这一切都是由系统管理的。
 */
