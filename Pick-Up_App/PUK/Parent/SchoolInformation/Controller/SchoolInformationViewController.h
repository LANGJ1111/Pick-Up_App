//
//  SchoolInformationViewController.h
//  PUK
//
//  Created by 浪极 on 2022/1/22.
//

#import <UIKit/UIKit.h>
#import "SchoolInformationView.h"

NS_ASSUME_NONNULL_BEGIN

@interface SchoolInformationViewController : UIViewController<UIScrollViewDelegate>

@property (nonatomic ,strong) SchoolInformationView* schoolInformationView;

@end

NS_ASSUME_NONNULL_END
