//
//  ViewController.h
//  16_登陆界面案例
//
//  Created by 差不多先生 on 2023/10/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    // Do any additional setup after loading the view.
    //登陆界面的组成
    //用户名提示：输入框     Label + textFiled
    //密码提示：  密码输入框 Label + textFiled
    //登陆按钮：      UIButton
    //注册按钮：      UIButton
    
    //用户名提示Label
    UILabel* _lbUserName;
    //密码提示Label
    UILabel* _lbPassword;
    
    //用户名输入框
    UITextField* _tfUserName;
    //密码输入框
    UITextField* _tfPassword;
    
    //登陆按钮
    UIButton* _btLogin;
    //注册按钮
    UIButton* _btRegister;
    
    
}


@end

