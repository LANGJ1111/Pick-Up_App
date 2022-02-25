//
//  SignUpView.m
//  PUK
//
//  Created by 浪极 on 2022/1/22.
//

#import "SignUpView.h"
#import "Masonry.h"
#define SIZE_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SIZE_HEIGHT ([UIScreen mainScreen].bounds.size.height)

@implementation SignUpView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    self.backgroundColor = [UIColor whiteColor];
    
    _backgroundImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"backgroundImage.jpg"]];
    [self addSubview:_backgroundImageView];
    [_backgroundImageView mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(@0);
        make.height.equalTo(@(SIZE_HEIGHT));
        make.left.equalTo(@0);
        make.width.equalTo(@(SIZE_WIDTH));
    }];
    
    _logoImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"PUKLogo.png"]];
    [self addSubview:_logoImageView];
    [_logoImageView mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self).offset(SIZE_HEIGHT * 0.08);
        make.height.equalTo(@(SIZE_HEIGHT * 0.15));
        make.centerX.equalTo(self.mas_centerX).offset(0);
        make.width.equalTo(@(SIZE_WIDTH * 0.7));
    }];
    
    _logoTitleImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"PUKTitleLogo.png"]];
    [self addSubview:_logoTitleImageView];
    [_logoTitleImageView mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(_logoImageView.mas_bottom).offset(SIZE_HEIGHT * 0.02);
        make.height.equalTo(@(SIZE_HEIGHT * 0.025));
        make.right.equalTo(self.mas_right).offset(-SIZE_WIDTH * 0.07);
        make.width.equalTo(@(SIZE_WIDTH * 0.6));
    }];
    
    _signUpReturnButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _signUpReturnButton.backgroundColor = [UIColor clearColor];
    [_signUpReturnButton setImage:[UIImage imageNamed:@"fanhui.png"] forState:UIControlStateNormal];
    [self addSubview:_signUpReturnButton];
    [_signUpReturnButton mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.mas_top).offset(SIZE_HEIGHT * 0.05);
        make.height.equalTo(@(SIZE_HEIGHT * 0.03));
        make.left.equalTo(self.mas_left).offset(SIZE_WIDTH * 0.02);
        make.width.equalTo(@(SIZE_HEIGHT * 0.03));
    }];
    
    _phoneNumberLabel = [[UILabel alloc] init];
    _phoneNumberLabel.layer.masksToBounds = YES;
    [_phoneNumberLabel.layer setCornerRadius:SIZE_HEIGHT * 0.026];
    _phoneNumberLabel.backgroundColor = [UIColor colorWithWhite:0.73 alpha:1];
    [self addSubview:_phoneNumberLabel];
    [_phoneNumberLabel mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.mas_centerY).offset(-SIZE_HEIGHT * 0.1);
        make.height.equalTo(@(SIZE_HEIGHT * 0.052));
        make.centerX.equalTo(self.mas_centerX).offset(0);
        make.width.equalTo(@(SIZE_WIDTH * 0.7));
    }];
    
    _validationLabel = [[UILabel alloc] init];
    _validationLabel.layer.masksToBounds = YES;
    [_validationLabel.layer setCornerRadius:SIZE_HEIGHT * 0.026];
    _validationLabel.backgroundColor = [UIColor colorWithWhite:0.73 alpha:1];
    [self addSubview:_validationLabel];
    [_validationLabel mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.phoneNumberLabel.mas_bottom).offset(SIZE_HEIGHT * 0.03);
        make.height.equalTo(@(SIZE_HEIGHT * 0.052));
        make.centerX.equalTo(self.mas_centerX).offset(0);
        make.width.equalTo(@(SIZE_WIDTH * 0.7));
    }];
    
    _phoneNumberTextField = [[UITextField alloc] init];
    _phoneNumberTextField.backgroundColor = [UIColor clearColor];
    _phoneNumberTextField.placeholder = @"请输入手机号";
    _phoneNumberTextField.textColor = [UIColor blackColor];
    _phoneNumberTextField.keyboardType = UIKeyboardTypeDefault;
    _phoneNumberTextField.font = [UIFont systemFontOfSize:22];
    [self addSubview:_phoneNumberTextField];
    [_phoneNumberTextField mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.phoneNumberLabel.mas_top).offset(SIZE_HEIGHT*0.003);
        make.height.equalTo(@(SIZE_HEIGHT * 0.045));
        make.centerX.equalTo(self.mas_centerX).offset(0);
        make.width.equalTo(@(SIZE_WIDTH * 0.62));
    }];
    
    _validationTextField = [[UITextField alloc] init];
    _validationTextField.backgroundColor = [UIColor clearColor];
    _validationTextField.placeholder = @"请输入验证码";
    _validationTextField.textColor = [UIColor blackColor];
    _validationTextField.keyboardType = UIKeyboardTypeDefault;
    _validationTextField.font = [UIFont systemFontOfSize:22];
    [self addSubview:_validationTextField];
    [_validationTextField mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.validationLabel.mas_top).offset(SIZE_HEIGHT * 0.003);
        make.height.equalTo(@(SIZE_HEIGHT * 0.045));
        make.left.equalTo(self.validationLabel.mas_left).offset((SIZE_WIDTH * 0.04));
        make.width.equalTo(@(SIZE_WIDTH * 0.4));
    }];
    
    _verificationCodeButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _verificationCodeButton.backgroundColor = [UIColor colorWithRed:0 green:0.38 blue:0.9 alpha:0.95];
    _verificationCodeButton.titleLabel.font = [UIFont systemFontOfSize:18];
    [_verificationCodeButton setTitle:@"发送验证码" forState:UIControlStateNormal];
    [_verificationCodeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self addSubview:_verificationCodeButton];
    [_verificationCodeButton mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.validationLabel.mas_top).offset(0);
        make.bottom.equalTo(self.validationLabel.mas_bottom).offset(0);
        make.right.equalTo(self.validationLabel.mas_right).offset(0);
        make.width.equalTo(@(SIZE_WIDTH * 0.25));
    }];
    [_verificationCodeButton layoutIfNeeded];
    //TODO:uiview 单边圆角或者单边框
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:_verificationCodeButton.bounds byRoundingCorners:(UIRectCornerTopRight | UIRectCornerBottomRight) cornerRadii:CGSizeMake(SIZE_HEIGHT * 0.026,SIZE_HEIGHT * 0.026)];//圆角大小
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = _verificationCodeButton.bounds;
    maskLayer.path = maskPath.CGPath;
    _verificationCodeButton.layer.mask = maskLayer;
    
    _signUpNextButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _signUpNextButton.backgroundColor = [UIColor colorWithRed:0 green:0.38 blue:0.7 alpha:1];
    _signUpNextButton.layer.masksToBounds = YES;
    [_signUpNextButton.layer setCornerRadius:SIZE_WIDTH * 0.125];
    [_signUpNextButton setTitle:@"下一步" forState:UIControlStateNormal];
    [_signUpNextButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _signUpNextButton.titleLabel.font = [UIFont systemFontOfSize:29];
    [self addSubview:_signUpNextButton];
    [_signUpNextButton mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(_validationLabel.mas_bottom).offset(SIZE_HEIGHT * 0.1);
        make.height.equalTo(@(SIZE_WIDTH * 0.25));
        make.centerX.equalTo(self.mas_centerX).offset(0);
        make.width.equalTo(@(SIZE_WIDTH * 0.25));
    }];
    
   

    
    return self;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [_phoneNumberTextField resignFirstResponder];
    [_validationTextField resignFirstResponder];
}

- (void)addNextView {
    _nameNextLabel = [[UILabel alloc] init];
    _nameNextLabel.layer.masksToBounds = YES;
    [_nameNextLabel.layer setCornerRadius:SIZE_HEIGHT * 0.026];
    _nameNextLabel.backgroundColor = [UIColor colorWithWhite:0.73 alpha:1];
    [self addSubview:_nameNextLabel];
    [_nameNextLabel mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.mas_centerY).offset(-SIZE_HEIGHT * 0.1);
        make.height.equalTo(@(SIZE_HEIGHT * 0.052));
        make.centerX.equalTo(self.mas_centerX).offset(0);
        make.width.equalTo(@(SIZE_WIDTH * 0.7));
    }];
    
    _passwordNextLabel = [[UILabel alloc] init];
    _passwordNextLabel.layer.masksToBounds = YES;
    [_passwordNextLabel.layer setCornerRadius:SIZE_HEIGHT * 0.026];
    _passwordNextLabel.backgroundColor = [UIColor colorWithWhite:0.73 alpha:1];
    [self addSubview:_passwordNextLabel];
    [_passwordNextLabel mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.nameNextLabel.mas_bottom).offset(SIZE_HEIGHT * 0.03);
        make.height.equalTo(@(SIZE_HEIGHT * 0.052));
        make.centerX.equalTo(self.mas_centerX).offset(0);
        make.width.equalTo(@(SIZE_WIDTH * 0.7));
    }];
    
    _nameNextTextField = [[UITextField alloc] init];
    _nameNextTextField.backgroundColor = [UIColor clearColor];
    _nameNextTextField.placeholder = @"请输入姓名";
    _nameNextTextField.textColor = [UIColor blackColor];
    _nameNextTextField.keyboardType = UIKeyboardTypeDefault;
    _nameNextTextField.font = [UIFont systemFontOfSize:22];
    [self addSubview:_nameNextTextField];
    [_nameNextTextField mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.nameNextLabel.mas_top).offset(SIZE_HEIGHT*0.003);
        make.height.equalTo(@(SIZE_HEIGHT * 0.045));
        make.centerX.equalTo(self.mas_centerX).offset(0);
        make.width.equalTo(@(SIZE_WIDTH * 0.62));
    }];
    
    _passwordNextTextField = [[UITextField alloc] init];
    _passwordNextTextField.backgroundColor = [UIColor clearColor];
    _passwordNextTextField.placeholder = @"请输入密码";
    _passwordNextTextField.textColor = [UIColor blackColor];
    _passwordNextTextField.keyboardType = UIKeyboardTypeDefault;
    _passwordNextTextField.font = [UIFont systemFontOfSize:22];
    [self addSubview:_passwordNextTextField];
    [_passwordNextTextField mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.passwordNextLabel.mas_top).offset(SIZE_HEIGHT * 0.003);
        make.height.equalTo(@(SIZE_HEIGHT * 0.045));
        make.left.equalTo(self.passwordNextLabel.mas_left).offset((SIZE_WIDTH * 0.04));
        make.width.equalTo(@(SIZE_WIDTH * 0.4));
    }];
    
}

@end
