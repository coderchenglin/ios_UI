//
//  VCImageShow.m
//  34_照片墙案例
//
//  Created by 差不多先生 on 2023/10/25.
//

#import "VCImageShow.h"

@interface VCImageShow ()

@end

@implementation VCImageShow

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"图片展示";
    
    _imageView = [[UIImageView alloc] init];
    
    _imageView.frame = CGRectMake(0, 0, 320, 480);
    
    //方法一 ： 传图片
    //_imageView.image = _image;  //(iamge是传过来的)
    
    //方法二 ： 利用tag值重新生成一份
    _imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%lu",_imageTag-100]];
    
    [self.view addSubview:_imageView];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
