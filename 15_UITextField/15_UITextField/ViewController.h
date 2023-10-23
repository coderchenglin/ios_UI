//
//  ViewController.h
//  15_UITextField
//
//  Created by 差不多先生 on 2023/10/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate> //这里还有一些协议函数！
{
    //定义一个textField
    //文本输入区域
    //例如，用户名，密码等需要输入文本文字的内容区域
    //只能输入单行的文字，不能输入或显示多行
    UITextField* _textField;
    
}

//注意下面者四个协议函数，两个返回值为void，两个返回值为bool

/*
-(void) textFieldDidBeginEditing:(UITextField *)textField;

-(void) textFieldDidEndEditing:(UITextField *)textField;

//是否可以进行输入
//如果返回值为YES，则可以进行输入
//NO：不能输入文字
-(bool) textFieldShouldBeginEditing:(UITextField *)textField;

-(bool) textFieldShouldEndEditing:(UITextField *)textField;
*/
@property (retain,nonatomic) UITextField* textField;

@end

