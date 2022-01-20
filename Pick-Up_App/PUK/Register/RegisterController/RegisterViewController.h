//
//  RegisterViewController.h
//  PUK
//
//  Created by mac on 2021/12/31.
//

#import "ViewController.h"
#import "RegisterView.h"
#import "LoginViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface RegisterViewController : ViewController

@property (nonatomic, strong) RegisterView* registerView;
@property (nonatomic, strong) LoginViewController* loginViewController;

@end

NS_ASSUME_NONNULL_END
