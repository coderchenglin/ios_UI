//
//  ViewController.h
//  12_UISlider和UIProgressView
//
//  Created by 差不多先生 on 2023/10/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //进度条对象
    //一般用来表示下载或视频播放的进度
    UIProgressView* _progressView;
    
    //滑动条的定义
    //一半用来进行调整音乐的音量等
    UISlider* _slider;
}

@property (retain,nonatomic) UIProgressView* pView;

@property (retain,nonatomic) UISlider*       slider;

@end

