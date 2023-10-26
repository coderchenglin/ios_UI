//
//  ViewController.h
//  UITableView基础
//
//  Created by 差不多先生 on 2023/10/26.
//

#import <UIKit/UIKit.h>
                                            //数据视图的普通事件处理，处理数据视图的数据代理
@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    //定义一个数据视图对象
    //数据视图用来显示大量相同格式的大量信息的视图
    UITableView* _tableView;
    
    
}

@end

