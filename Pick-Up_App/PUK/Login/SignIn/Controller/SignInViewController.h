//
//  SignInViewController.h
//  PUK
//
//  Created by 浪极 on 2022/1/22.
//

#import <UIKit/UIKit.h>
#import "SignInView.h"
@class SignUpViewController;

NS_ASSUME_NONNULL_BEGIN

@interface SignInViewController : UIViewController

@property (nonatomic, strong) SignInView *signInView;
@property (nonatomic, strong) SignUpViewController *signUpViewController;

@end

NS_ASSUME_NONNULL_END
