//
//  ViewController.m
//  15_UITextField
//
//  Created by 差不多先生 on 2023/10/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


@synthesize textField = _textField;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //这节我们用属性来接收
    self.textField = [[UITextField alloc] init];
    
    self.textField.frame = CGRectMake(100, 100, 180, 40);
    
    self.textField.text = @"用户名";
    
    self.textField.font = [UIFont systemFontOfSize:15];
    
    self.textField.textColor = [UIColor blackColor];
    
    //border - 边界
    //这个有4种边框风格
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    
    //设置虚拟键盘
    //UIKeyboardTypeDefault : 默认风格
    self.textField.keyboardType = UIKeyboardTypeDefault;
    
    //提示文字信息
    //当text属性为空，显示此条信息
    //浅灰色提示文字
    self.textField.placeholder = @"请输入用户名。。。";
    
    //是否作为密码输入
    //YES：隐藏处理，圆点加密
    //NO： 正常显示输入的文字
    self.textField.secureTextEntry = NO;
    
    [self.view addSubview:self.textField];
    
    //（重点）这里要设置代理，下面有解释
    //在 iOS 中，文本字段（UITextField）通常需要设置代理，以便能够响应和处理用户的输入、键盘事件、文本变化等。设置代理后，你可以实现代理协议中的方法来定义文本字段的行为。
    self.textField.delegate = self;
}


//下面是UITextField的4个协议函数
-(void) textFieldDidBeginEditing:(UITextField *)textField
{
    NSLog(@"开始编辑了");
}

-(void) textFieldDidEndEditing:(UITextField *)textField
{
    //这里可以直接清空掉textField里面的数据
    self.textField.text = @"";
    NSLog(@"结束编辑了");
}


//这两个默认都是YES
-(bool) textFieldShouldBeginEditing:(UITextField *)textField
{
    return YES;
}

-(bool) textFieldShouldEndEditing:(UITextField *)textField
{
    return YES;
}


//点击屏幕空白处调用此函数
-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //使虚拟键盘回收，不再作为第一消息相应者（记！）
    [self.textField resignFirstResponder];
}

@end



//这一节有挺多重难点的
//1.四个代理函数
//2.为什么要设置代理

/*
self.textField.delegate = self;
这句代码是什么意思？

这句代码是在 iOS 开发中设置文本字段（`UITextField`）的代理（Delegate）的操作。它的含义是将当前视图控制器（通常是一个 `UIViewController` 或其他自定义的视图控制器类）设置为文本字段的代理对象，以便在文本字段发生事件时能够响应和处理这些事件。

具体解释如下：

- `self.textField.delegate`: `self` 是当前视图控制器的实例，而 `textField` 是视图控制器中的一个文本字段对象。通过 `.delegate` 属性，你可以获取或设置文本字段的代理对象。

- `self`: 在这个上下文中，`self` 代表当前视图控制器的实例。

- `=`: 赋值操作符，用于将右侧的值赋给左侧的属性或变量。

- `self`: 在这里表示当前视图控制器的实例，也就是当前的视图控制器对象。

- `textField`: 这是视图控制器中的一个文本字段对象，通常是在视图控制器的代码中定义的一个 `UITextField` 属性。

- `.delegate`: 这是文本字段的属性，用于设置文本字段的代理对象。代理对象是一个符合特定协议（通常是 `UITextFieldDelegate`）的对象，用于处理文本字段相关的事件和行为。

通过将 `self` 分配给文本字段的代理，视图控制器成为了文本字段的代理对象，可以实现协议方法来处理文本字段的事件，例如用户输入、文本变化、键盘显示和隐藏等。

一旦设置了代理，视图控制器可以实现协议中的方法，以响应文本字段事件，例如 `textFieldShouldReturn:`（用户按下 Return 键时的回调方法）或 `textField:shouldChangeCharactersInRange:replacementString:`（文本发生变化时的回调方法），并执行相关操作。
*/
