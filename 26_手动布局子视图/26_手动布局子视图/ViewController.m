//
//  ViewController.m
//  26_手动布局子视图
//
//  Created by 差不多先生 on 2023/10/24.
//

#import "ViewController.h"
#import "SuperView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //创建SuperView视图
    SuperView* sView = [[SuperView alloc]init];
    
    
    sView.frame = CGRectMake(20, 20, 180, 280);
    
    [sView creatSubViews];
    
    sView.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:sView];
    
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn.frame = CGRectMake(240, 480, 80, 40);
    
    [btn setTitle:@"放大" forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(pressLarge) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    UIButton* btn02 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn02.frame = CGRectMake(240, 520, 80, 40);
    
    [btn02 setTitle:@"缩小" forState:UIControlStateNormal];
    
    [btn02 addTarget:self action:@selector(pressSmall) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn02];
    
    //用于后面访问此SuperView视图
    sView.tag = 101;
    
    
    
}

-(void) pressLarge
{
    SuperView* sView = (SuperView *)[self.view viewWithTag:101];
    
    //[UIView beginAnimations:nil context:nil];
    
    //[UIView setAnimationDuration:1];
    
    sView.frame = CGRectMake(20, 20, 300, 480);
    
    //[UIView commitAnimations];
}

-(void) pressSmall
{
    //这里是一个向下转型
    SuperView* sView = (SuperView *)[self.view viewWithTag:101];
    
    //[UIView beginAnimations:nil context:nil];
    
    //[UIView setAnimationDuration:1];
    
    sView.frame = CGRectMake(20, 20, 180, 280);
    
    //[UIView commitAnimations];
}


@end


//1.向下转型
/*
在这段代码中，`(SuperView *)` 是一种类型转换操作，它告诉编译器将 `self.view viewWithTag:101` 返回的对象强制转换为 `SuperView` 类型。这样的类型转换是为了让编译器知道你正在处理的对象的具体类型，以便你可以调用该类型的方法和属性。

具体来说：

- `self.view` 返回的是一个 `UIView` 类型的对象，因为 `view` 属性是 `UIView` 类的一个属性，表示当前视图控制器的主视图。

- `viewWithTag:` 方法返回的对象的类型是 `UIView *`，它是一个通用的视图对象类型。

- 如果你确定标记为 `101` 的视图实际上是 `SuperView` 类的一个实例，你可以使用类型转换来将其转换为 `SuperView` 类型，以便你可以访问 `SuperView` 类中特有的方法和属性。

示例代码中的 `(SuperView *)` 部分是将 `UIView *` 类型的对象强制转换为 `SuperView *` 类型的对象。这样，你就可以在后续的代码中像操作 `SuperView` 类一样操作这个对象，包括调用 `SuperView` 类的方法和属性。如果你没有进行类型转换，编译器可能会发出警告或错误，因为它不知道你想要调用 `SuperView` 特有的方法或属性。

需要注意的是，进行类型转换时要确保被转换的对象实际上是目标类型或其子类的实例，否则在运行时可能会引发异常。因此，类型转换应该在你确定对象类型的情况下进行。
*/






//问题：
//也就是说可以把父类强转为子类？那子类可以强转为父类吗？一般是怎么做到？

/*
在编程中，你可以将一个子类对象强制转换为父类类型，这通常是安全的，因为子类是父类的扩展，它包含了父类的所有属性和方法，但可能还有一些额外的属性和方法。这种操作称为**向上转型**。这样做通常是为了实现多态性和更一般化的代码。

例如，如果有一个 `Animal` 类和一个 `Cat` 类（`Cat` 是 `Animal` 的子类），你可以将 `Cat` 对象强制转换为 `Animal` 类型：

```objective-c
Cat *cat = [[Cat alloc] init];
Animal *animal = (Animal *)cat; // 向上转型
```

但反过来，将父类对象强制转换为子类类型是不安全的，可能导致运行时错误。这种操作称为**向下转型**。这是因为父类对象可能不包含子类独有的属性和方法，所以进行向下转型时要谨慎。

在 Objective-C 中，你可以使用类型转换操作符 `()` 进行类型转换，但在进行向下转型时，应该先使用 `isKindOfClass` 方法来检查对象的类型，以确保转换是安全的。如果对象不是目标类型，就不应该进行向下转型。以下是一个示例：

```objective-c
Animal *animal = [[Animal alloc] init];

if ([animal isKindOfClass:[Cat class]]) {
    Cat *cat = (Cat *)animal; // 向下转型
    // 此时可以安全地访问 Cat 类的属性和方法
} else {
    // 处理类型不匹配的情况
}
```

总之，向上转型是安全的，而向下转型需要谨慎处理，以避免运行时错误。类型检查是一种很好的实践，可以确保转换是安全的。
*/


//问题：
//SuperView* sView = (SuperView *)[self.view viewWithTag:101];
//这个例子就是向下转型对吧？
/*
 是的，这个例子是向下转型。在这里，`[self.view viewWithTag:101]` 返回的是一个 `UIView` 类型的对象，然后你将它强制转换为 `SuperView` 类型，即子类类型。这是一种向下转型的操作，因为你将一个父类对象转换为子类类型。

 这种向下转型操作是合法的前提是被转换的对象实际上是目标子类的实例。在你的示例中，如果标记为 `101` 的视图确实是 `SuperView` 类的实例，那么向下转型是安全的，你可以在后续的代码中像操作 `SuperView` 类一样操作这个对象。

 但需要注意，如果标记为 `101` 的视图不是 `SuperView` 类的实例，那么向下转型可能会导致运行时错误，因此在进行向下转型之前最好使用 `isKindOfClass` 方法进行类型检查，以确保对象的类型匹配。
*/
