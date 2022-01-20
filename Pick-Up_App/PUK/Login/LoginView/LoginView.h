//
//  LoginView.h
//  PUK
//
//  Created by mac on 2021/12/31.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LoginView : UIView <UITextFieldDelegate>

@property (nonatomic, strong) UITextField* usernameTextField;
@property (nonatomic, strong) UITextField* passwordTextField;
@property (nonatomic, strong) UILabel* usernameLabel;
@property (nonatomic, strong) UILabel* passwordLabel;
@property (nonatomic, strong) UIButton* loginButton;
@property (nonatomic, strong) UIButton* recoverPasswordButton;
@property (nonatomic, strong) UIButton* registerButton;

@end

NS_ASSUME_NONNULL_END
