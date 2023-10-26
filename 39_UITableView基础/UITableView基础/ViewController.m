//
//  ViewController.m
//  UITableView基础
//
//  Created by 差不多先生 on 2023/10/26.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //p1:数据视图的位置
    //p2:数据视图的风格
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    
    //@property (nonatomic, weak, nullable) id <UITableViewDataSource> dataSource;
    //@property (nonatomic, weak, nullable) id <UITableViewDelegate> delegate;
    //下面这两个就是上面定义的这两个代理
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    
}


//获取每组元素的个数（行数）
//这是一个必须要实现的协议函数
//程序在显示数据视图时会调用此函数
//返回值：表示每组元素的个数
//p1:数据视图对象本身
//p2:那一组需要的行数

//设置数据属兔没组多少行（必须实现）
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

//设置数据视图组数（选择实现，默认为1）
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}


//创建单元格对象函数（必须实现）
//每个单元格创建都要执行这个函数
-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* cellStr = @"cell";
    
    //table：表格
    //cell：单元格
    //index：索引
    //path：路径
    UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:cellStr];
    //dequeueReusableCellWithIdentifier：
    //  //Used by the delegate to acquire an already allocated cell, in lieu of allocating a new one.
    //  由委托用来获取已分配的单元格，而不是分配新的单元格
    
    if(cell == nil)
    {
        //传进来的indexPath参数，相当于把单元格的组数和行数给传进来了
        //创建一个单元格对象
        //p1：单元格的样式
        //p2：单元格的复用标记（怎么复用下节课讲）
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellStr];
    }
    
    NSString* str = [NSString stringWithFormat:@"第%ld组，第%ld行",indexPath.section, indexPath.row];
    
    cell.textLabel.text = str;
    
    return cell;
}

@end
