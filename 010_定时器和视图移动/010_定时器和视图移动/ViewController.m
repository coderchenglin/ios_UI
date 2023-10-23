//
//  ViewController.m
//  010_定时器和视图移动
//
//  Created by 差不多先生 on 2023/10/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//属性和成员变量同步
@synthesize timerView = _timerView;

- (void)viewDidLoad
{
    [super viewDidLoad];

    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn.frame = CGRectMake(100, 100, 80, 40);
    
    [btn setTitle:@"启动定时器" forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(pressStart) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    
    UIButton* btnstop = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btnstop.frame = CGRectMake(100, 200, 80, 40);
    
    [btnstop setTitle:@"停止定时器" forState:UIControlStateNormal];
    
    [btnstop addTarget:self action:@selector(pressStop) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btnstop];
    
    UIView* view = [[UIView alloc] init];
    
    view.backgroundColor = [UIColor orangeColor];
    
    view.frame = CGRectMake(0, 0, 80, 200);
    
    [self.view addSubview:view];
    
    //设置view的tag标签值
//（重点）理解：是怎么通过view的tag值和父亲视图对象的一个方法viewWithTag，来访问到这个view）
    //通过父亲视图对象以及view的tag值，可以获得相应的视图对象
    view.tag = 101;
    
    
    
}

-(void) pressStart
{
    //本节重点函数：
    //NSTimer的类方法创建一个定时器并且启动这个定时器
    //p1:每隔多长时间调用定时器函数，以秒为单位； 如果为0：0.1 milliseconds instead（0.1毫秒来代替）
    //p2:表示实现定时器函数的对象（指针）：当前视图控制器来调用就传self，别的视图控制器调用就传别的对象
    //p3:定时器选择的函数对象
//（重要）p4:可以传入作为定时器函数中的一个参数，没有可以传nil (这个跟参数名区别较大，记一下），这个userInfo上一个id类型，就是可以是任何类型
    //p5:定时器是否重复
    //返回值为 一个新建好的定时器对象，赋给一个定时器对象，然后在pressStop函数中就可以用这个对象，把定时器关闭了
    _timerView = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(updateTimer:) userInfo:@"lp" repeats:YES];
}

//定时器函数
//可以将定时器本身作为参数传入
-(void) updateTimer:(NSTimer*) timer
{
    NSLog(@"test name:%@",timer.userInfo);
    
    //viewWithTag是父视图对象的一个函数，可以通过这个函数，加上之前view的tag值，访问到之前的view
    UIView* view = [self.view viewWithTag:101];
    
    view.frame = CGRectMake(view.frame.origin.x+5,view.frame.origin.y+5,80,80);
}

-(void) pressStop
{
    if(_timerView)
    {
        //停止定时器
        [_timerView invalidate]; //invalidate : 无效
    }
}


@end


//总结：重点：1.学会使用这个函数：
//+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector userInfo:(nullable id)userInfo repeats:(BOOL)yesOrNo
//2.理解如果在其他函数中，通过其父视图的类方法viewWithTag和子视图的tag值，调用子视图

//viewWithTag是UIView的类方法

//3.学会利用定时器实现滚动视图





//问题1:为什么在updateTimer: 方法中不能直接调用view对象呢，详细解释一下中个语法
///问题2:深入讲解讲解一下viewWithTag这个方法的作用以及用法，还有原理

/*
回答：
问题1:
在 `updateTimer:` 方法中不能直接使用 `view` 对象，是因为 `view` 对象在 `updateTimer:` 方法的作用域之外。`view` 对象是在 `viewDidLoad` 方法中创建的，而 `updateTimer:` 方法是一个独立的函数，不能直接访问 `view` 对象。因此，为了在 `updateTimer:` 方法中使用 `view` 对象，你需要一种方法来获取对它的引用。这就是为什么你使用了 `viewWithTag:` 方法，通过标记值来访问 `view` 对象。

问题2:
`viewWithTag:` 是 `UIView` 类的方法，它的作用是在视图的子视图中查找具有特定标记值的子视图，并返回对该子视图的引用。这个方法的用途是：

- 在复杂的视图层次结构中，有时需要访问特定的子视图，而不必遍历整个层次结构。使用标记值可以快速定位到需要的子视图。

- 在视图控制器中，你可能希望在某个时刻访问或修改特定的视图，而不必保持对该视图的引用。`viewWithTag:` 允许你通过标记值来获取对该视图的引用。

`viewWithTag:` 的用法如下：

```objc
UIView *view = [父视图 viewWithTag:标记值];
```

- `父视图` 是你希望在其子视图中查找的视图，通常是当前视图控制器的视图（`self.view`）。

- `标记值` 是你为子视图设置的整数标记。这个标记值应该是唯一的，以便在视图层次结构中识别特定的子视图。

`viewWithTag:` 方法会在父视图的子视图中查找具有指定标记值的子视图，并返回对这个子视图的引用。如果没有找到具有指定标记值的子视图，它会返回 `nil`。

原理：`viewWithTag:` 方法在视图的子视图中递归查找，以找到具有指定标记值的子视图。一旦找到匹配的子视图，它会返回对该子视图的引用。这个方法的性能通常很好，因为它会维护一个内部的标记值索引，以加速查找过程。
*/


//3.关于tag值
/*
标记值（tag）是每个 UIView 对象的属性，因此每个视图都可以拥有自己的标记值。这意味着你可以在每个视图上设置不同的标记值，以满足你的特定需求。标记值是在视图的层次结构内唯一的，因此你可以在每个父视图中为其子视图设置不同的标记值。

一般情况下，标记值是由开发者设置的，用于标识或定位特定的子视图。因此，你可以根据视图的层次结构和应用程序的需求，为每个子视图分配唯一的标记值。

在实践中，确保标记值在相应的视图层次结构中是唯一的是非常重要的，以避免冲突和混淆。不同的父视图可以拥有相同的标记值，因为它们的子视图是相互独立的。因此，统一管理标记值对于避免冲突是重要的。你可以通过文档、注释或开发团队内的约定来管理标记值，以确保它们的唯一性。
*/




