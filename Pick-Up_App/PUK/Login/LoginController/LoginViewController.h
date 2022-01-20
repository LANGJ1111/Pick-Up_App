//
//  LoginViewController.h
//  PUK
//
//  Created by mac on 2021/12/31.
//

#import "ViewController.h"
#import "LoginView.h"
@class RegisterViewController;

NS_ASSUME_NONNULL_BEGIN

@interface LoginViewController : ViewController
@property (nonatomic, strong) LoginView* loginView;
@property (nonatomic, strong) RegisterViewController* registerViewController;

@end

NS_ASSUME_NONNULL_END
