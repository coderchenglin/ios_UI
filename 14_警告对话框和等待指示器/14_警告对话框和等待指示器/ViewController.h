//
//  ViewController.h
//  14_警告对话框和等待指示器
//
//  Created by 差不多先生 on 2023/10/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //定义一个警告对话框视图对象 - UIAlertView已经弃用
    //UIAlertController* _alertView ;
    
    //等待提示对象
    //当下载，或加载比较大的文件时，可以显示此控件，处于提示等待状态
    UIActivityIndicatorView* _activityIndicator ;
    
}

@end

