//
//  ViewController.m
//  41_UITableView高级
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
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    
    //自动调整子视图的大小
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    
    //设置代理
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    //数据视图的头部视图   -   一半赋个UIView对象啥的
    _tableView.tableHeaderView = nil;
    //数据视图的尾部视图
    _tableView.tableFooterView = nil;
    
    [self.view addSubview:_tableView];
    
    //初始化数据源数组
    _arrayDate = [[NSMutableArray alloc] init];
    
    for(int i = 1; i<20 ; i++)
    {
        NSString* str = [NSString stringWithFormat:@"A %d",i];
        
        [_arrayDate addObject:str];
    }
    
    [self createBtn];
    //当数据视图的数据源发生变化时，
    //更新数据视图，重新加载数据
    [_tableView reloadData];
}

//该组行数
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //一位数组直接返回count就行，就只有一个组
    return _arrayDate.count;
}

//组数
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* strID = @"ID";
    
    //尝试获取可以复用的单元格
    //如果得不到，返回nil
    UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:strID];
    
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:strID];
    }
    //单元格文字赋值
    cell.textLabel.text = [_arrayDate objectAtIndex:indexPath.row];
    
    return cell;
}

-(void) createBtn
{
    _isEdit = NO;
    
    _btnEdit = [[UIBarButtonItem alloc] initWithTitle:@"Edit" style:UIBarButtonItemStylePlain target:self action:@selector(pressEdit)];
    _btnFinish = [[UIBarButtonItem alloc] initWithTitle:@"Finish" style:UIBarButtonItemStylePlain target:self action:@selector(pressFinish)];
    _btnDelete = [[UIBarButtonItem alloc] initWithTitle:@"Delete" style:UIBarButtonItemStylePlain target:self action:@selector(pressDelete)];
    
    self.navigationItem.rightBarButtonItem = _btnEdit;
}

-(void) pressEdit
{
    _isEdit = YES;
    self.navigationItem.rightBarButtonItem = _btnFinish;
    [_tableView setEditing:YES]; //开启编辑状态
    self.navigationItem.leftBarButtonItem = _btnDelete;
}

-(void) pressFinish
{
    _isEdit = NO;
    self.navigationItem.rightBarButtonItem = _btnEdit;
    [_tableView setEditing:NO]; //关闭编辑状态
    self.navigationItem.leftBarButtonItem = nil;
    
}

-(void) pressDelete
{
    
}



@end
