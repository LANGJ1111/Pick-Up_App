//
//  SignInView.m
//  PUK
//
//  Created by 浪极 on 2022/1/22.
//

#import "SignInView.h"
#import "Masonry.h"
#define SIZE_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SIZE_HEIGHT ([UIScreen mainScreen].bounds.size.height)

@implementation SignInView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    self.backgroundColor = [UIColor whiteColor];
    
    _usernameLabel = [[UILabel alloc] init];
    _usernameLabel.layer.masksToBounds = YES;
    [_usernameLabel.layer setCornerRadius:8];
    // 设置边框的颜色和边框的宽度
    _usernameLabel.layer.borderColor = [UIColor blueColor].CGColor;
    _usernameLabel.layer.borderWidth = 1;
    _usernameLabel.backgroundColor = [UIColor clearColor];
    [self addSubview:_usernameLabel];
    [_usernameLabel mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.mas_centerY).offset(-SIZE_HEIGHT * 0.1);
        make.height.equalTo(@(SIZE_HEIGHT * 0.045));
        make.left.equalTo(self.mas_centerX).offset(-SIZE_WIDTH * 0.3);
        make.width.equalTo(@(SIZE_WIDTH * 0.6));
    }];
    
    _passwordLabel = [[UILabel alloc] init];
    _passwordLabel.layer.masksToBounds = YES;
    [_passwordLabel.layer setCornerRadius:8];
    // 设置边框的颜色和边框的宽度
    _passwordLabel.layer.borderColor = [UIColor blueColor].CGColor;
    _passwordLabel.layer.borderWidth = 1;
    _passwordLabel.backgroundColor = [UIColor clearColor];
    [self addSubview:_passwordLabel];
    [_passwordLabel mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.usernameLabel.mas_bottom).offset(SIZE_HEIGHT * 0.02);
        make.height.equalTo(@(SIZE_HEIGHT * 0.045));
        make.left.equalTo(self.mas_centerX).offset(-SIZE_WIDTH * 0.3);
        make.width.equalTo(@(SIZE_WIDTH * 0.6));
    }];
    
    _loginButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _loginButton.backgroundColor = [UIColor blueColor];
    [_loginButton setTitle:@"登陆" forState:UIControlStateNormal];
    [_loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self addSubview:_loginButton];
    [_loginButton mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.passwordLabel.mas_bottom).offset(SIZE_HEIGHT * 0.06);
        make.height.equalTo(@(SIZE_HEIGHT * 0.04));
        make.left.equalTo(self.mas_centerX).offset(-SIZE_WIDTH * 0.2);
        make.width.equalTo(@(SIZE_WIDTH * 0.4));
    }];
    
    _recoverPasswordButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _recoverPasswordButton.backgroundColor = [UIColor grayColor];
    [_recoverPasswordButton setTitle:@"点击此处找回密码" forState:UIControlStateNormal];
    [_recoverPasswordButton setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    [self addSubview:_recoverPasswordButton];
    [_recoverPasswordButton mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.loginButton.mas_bottom).offset(SIZE_HEIGHT * 0.06);
        make.height.equalTo(@(SIZE_HEIGHT * 0.03));
        make.left.equalTo(self.mas_centerX).offset(-SIZE_WIDTH * 0.2);
        make.width.equalTo(@(SIZE_WIDTH * 0.4));
    }];
    
    _registerButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _registerButton.backgroundColor = [UIColor grayColor];
    [_registerButton setTitle:@"点击此处注册" forState:UIControlStateNormal];
    [_registerButton setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    [self addSubview:_registerButton];
    [_registerButton mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.recoverPasswordButton.mas_bottom).offset(SIZE_HEIGHT * 0.03);
        make.height.equalTo(@(SIZE_HEIGHT * 0.03));
        make.left.equalTo(self.mas_centerX).offset(-SIZE_WIDTH * 0.2);
        make.width.equalTo(@(SIZE_WIDTH * 0.4));
    }];
    
    _usernameTextField = [[UITextField alloc] init];
    _usernameTextField.backgroundColor = [UIColor clearColor];
    _usernameTextField.placeholder = @"请输入用户名";
    _usernameTextField.textColor = [UIColor blackColor];
    _usernameTextField.keyboardType = UIKeyboardTypeDefault;
    _usernameTextField.font = [UIFont systemFontOfSize:20];
    [self addSubview:_usernameTextField];
    [_usernameTextField mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.mas_centerY).offset(-SIZE_HEIGHT * 0.1);
        make.height.equalTo(@(SIZE_HEIGHT * 0.04));
        make.left.equalTo(self.mas_centerX).offset(-SIZE_WIDTH * 0.28);
        make.width.equalTo(@(SIZE_WIDTH * 0.56));
    }];
    
    _passwordTextField = [[UITextField alloc] init];
    _passwordTextField.backgroundColor = [UIColor clearColor];
    _passwordTextField.placeholder = @"请输入密码";
    _passwordTextField.textColor = [UIColor blackColor];
    _passwordTextField.keyboardType = UIKeyboardTypeDefault;
    _passwordTextField.font = [UIFont systemFontOfSize:20];
    [self addSubview:_passwordTextField];
    [_passwordTextField mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.usernameLabel.mas_bottom).offset(SIZE_HEIGHT * 0.02);
        make.height.equalTo(@(SIZE_HEIGHT * 0.04));
        make.left.equalTo(self.mas_centerX).offset(-SIZE_WIDTH * 0.28);
        make.width.equalTo(@(SIZE_WIDTH * 0.56));
    }];
    
    return self;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [_passwordTextField resignFirstResponder];
    [_usernameTextField resignFirstResponder];
}

@end
