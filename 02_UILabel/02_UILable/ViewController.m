//
//  ViewController.m
//  02_UILable
//
//  Created by 差不多先生 on 2023/10/22.
//

#import "ViewController.h"
//类扩展：
//当你在.h文件中声明属性和方法时，这些属性和方法会成为类的公共接口的一部分，可供其他类和对象访问。而在.m文件中的扩展部分，通常用来声明私有属性和方法，这些属性和方法不会成为公共接口的一部分，只能在类的内部使用。这种分离有助于保持类的封装性和可维护性。

//需要注意的是，你可以使用类扩展（通常是在.m文件中）来声明私有属性和方法，以确保只有类的内部代码可以访问它们。扩展使用匿名类别的方式来实现，比如 @interface MyClass ()。这允许你将私有属性和方法的声明与公共接口分开，但仍然在类的实现文件中。这种方式既隐藏了实现细节，又使其可在类的内部使用。

@interface ViewController ()

@end

@implementation ViewController

-(void) CreatUI
{
    UILabel* label = [[UILabel alloc]init];
    
    label.text = @"hello world";
    
    CGFloat screenWidth = [[UIScreen mainScreen] bounds].size.width;
    CGFloat screenHeight = [[UIScreen mainScreen] bounds].size.height;

    label.frame = CGRectMake(100, 100, 300, 200);
    
    //可以设置为透明色 - clear
    label.backgroundColor = [UIColor blueColor];
    
    //*self表示CreatUI方法所属的视图控制器
    //self.view表示当前试图控制器的根视图，每一个视图控制器只能有一个根视图，但每一个根视图可以有很多个子视图
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:label];
    
    label.font = [UIFont systemFontOfSize:36];
    
    label.shadowColor = [UIColor grayColor];
    
    label.shadowOffset = CGSizeMake(10, 10);
    
    //居中对齐
    //NSTextAlignmentCenter
    //NSTextAlignmentLeft
    //NSTextAlignmentright
    label.textAlignment = NSTextAlignmentRight;
    
    //默认值为1， 设为0表示自动换行
    label.numberOfLines = 0;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //同时利用 [super viewDidLoad] 来确保 UIViewController 类的默认行为得以执行。
    
    [self CreatUI];
}


@end


//总结：查看UILabel有哪些可以设置的属性，直接点进定义去看就行了

//UIViewController类和UIView类有相互饮用，使用了@class 进行前向声明，避免循环依赖的问题。
//UIViewController类中声明了UIView类的属性UIView *view
