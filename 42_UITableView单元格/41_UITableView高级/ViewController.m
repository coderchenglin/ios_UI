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
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:strID];
    }
    //单元格文字赋值
    cell.textLabel.text = [_arrayDate objectAtIndex:indexPath.row];
    //设置子标题文字 - 需要上面设置单元格的风格为initWithStyle:UITableViewCellStyleSubtitle，Subtitle
    cell.detailTextLabel.text = @"子标题";
    
    //还有一种，可以不设文字，设图标
//    NSString* str = [NSString stringWithFormat:@"%ld.png",indexPath.row % 7 + 1];
//    UIImage* image = [UIImage imageNamed:str];
//    cell.imageView.image = image;
    
    
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

//单元格编辑时显示效果协议
-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //默认为删除
    return UITableViewCellEditingStyleDelete;
    //return UITableViewCellEditingStyleInsert;
    //return UITableViewCellEditingStyleNone;
    //删除 + 插入 = 多选
    //return UITableViewCellEditingStyleDelete | UITableViewCellEditingStyleInsert;
}


//这个函数写出来,什么都不干
//就可以让手指在单元格上移动时，就可以显示编辑状态（不需要点编辑键了）
-(void) tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //删除数据源对应的数据（注意只是数据源改变了，没有加载的话，视图上还没变呢）
    [_arrayDate removeObjectAtIndex:indexPath.row];
    //数据源更新
    [_tableView reloadData];
    
    
    NSLog(@"delete");
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"选中单元格%ld,%ld",indexPath.section,indexPath.row);
}

-(void) tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    NSLog(@"取消选中单元格 %ld,%ld",indexPath.section,indexPath.row);
}

@end
