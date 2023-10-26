//
//  VCImageShow.h
//  34_照片墙案例
//
//  Created by 差不多先生 on 2023/10/25.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VCImageShow : UIViewController

@property (nonatomic,assign) NSUInteger imageTag;
@property (nonatomic,retain) UIImage*   image;
@property (nonatomic,retain) UIImageView* imageView;

@end

NS_ASSUME_NONNULL_END
