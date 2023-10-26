//
//  ViewController.h
//  41_UITableView高级
//
//  Created by 差不多先生 on 2023/10/26.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    UITableView* _tableView;
    
    NSMutableArray* _arrayDate;
    
    UIBarButtonItem* _btnEdit;
    UIBarButtonItem* _btnFinish;
    UIBarButtonItem* _btnDelete;
    //设置编辑状态
    BOOL _isEdit;
}


@end

