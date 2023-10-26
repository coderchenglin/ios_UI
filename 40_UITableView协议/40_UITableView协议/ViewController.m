//
//  ViewController.m
//  40_UITableView协议
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
    
    //创建数据视图对象
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 40, 320, 536) style:UITableViewStyleGrouped];
    //设置代理对象
    _tableView.delegate = self;
    //设置数据代理对象
    _tableView.dataSource = self;
    //数据视图显示
    [self.view addSubview:_tableView];
    
    //创建一个可变数组
    _arrayDate = [[NSMutableArray alloc] init];
    
    for(int i = 'A';i<='Z';i++)
    {
        NSMutableArray* arraySmall = [[NSMutableArray alloc]init];
        
        for(int j = 1;j<=5;j++)
        {
            NSString* str = [NSString stringWithFormat:@"%c%d",i,j];
            
            [arraySmall addObject:str];
        }
        
        //生成一个二维数组
        [_arrayDate addObject:arraySmall];
    }
}

//获取组数
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return _arrayDate.count;
}

//获取每组元素个数
//p1:单元格对象
//p2:第几组（用一个整数索引来表示）
//返回值，返回section组的行数
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //获取该组（section组）的元素个数
    NSInteger numRow = [[_arrayDate objectAtIndex:section] count];
    
    return numRow;
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* str = @"cell";
    
    UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:str];
    
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:str];
    }
    
    cell.textLabel.text = _arrayDate[indexPath.section][indexPath.row];
    return cell;
}


//获取单元格高度
-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

//获取每组头部标题
-(NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"头部标题";
}

//获取每组尾部标题
-(NSString*) tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    return @"尾部标题";
}


-(CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 20;
}

-(CGFloat) tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 70;
}




@end
