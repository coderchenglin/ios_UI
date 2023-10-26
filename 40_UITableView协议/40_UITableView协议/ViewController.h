//
//  ViewController.h
//  40_UITableView协议
//
//  Created by 差不多先生 on 2023/10/26.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    //定义视图对象
    UITableView* _tableView;
    
    //声明一个数据源
    NSMutableArray* _arrayDate;
}

@end

