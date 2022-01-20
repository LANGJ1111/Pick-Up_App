//
//  RegisterView.m
//  PUK
//
//  Created by mac on 2021/12/31.
//

#import "RegisterView.h"
#import "Masonry.h"
#define SIZE_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SIZE_HEIGHT ([UIScreen mainScreen].bounds.size.height)

@implementation RegisterView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    self.backgroundColor = [UIColor whiteColor];
    
    _phoneNumberLabel = [[UILabel alloc] init];
    _phoneNumberLabel.layer.masksToBounds = YES;
    [_phoneNumberLabel.layer setCornerRadius:8];
    // 设置边框的颜色和边框的宽度
    _phoneNumberLabel.layer.borderColor = [UIColor blueColor].CGColor;
    _phoneNumberLabel.layer.borderWidth = 1;
    _phoneNumberLabel.backgroundColor = [UIColor clearColor];
    [self addSubview:_phoneNumberLabel];
    [_phoneNumberLabel mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.mas_centerY).offset(-SIZE_HEIGHT * 0.1);
        make.height.equalTo(@(SIZE_HEIGHT * 0.045));
        make.left.equalTo(self.mas_centerX).offset(-SIZE_WIDTH * 0.3);
        make.width.equalTo(@(SIZE_WIDTH * 0.6));
    }];
    
    _validationLabel = [[UILabel alloc] init];
    _validationLabel.layer.masksToBounds = YES;
    [_validationLabel.layer setCornerRadius:8];
    // 设置边框的颜色和边框的宽度
    _validationLabel.layer.borderColor = [UIColor blueColor].CGColor;
    _validationLabel.layer.borderWidth = 1;
    _validationLabel.backgroundColor = [UIColor clearColor];
    [self addSubview:_validationLabel];
    [_validationLabel mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.phoneNumberLabel.mas_bottom).offset(SIZE_HEIGHT * 0.02);
        make.height.equalTo(@(SIZE_HEIGHT * 0.045));
        make.left.equalTo(self.mas_centerX).offset(-SIZE_WIDTH * 0.3);
        make.width.equalTo(@(SIZE_WIDTH * 0.6));
    }];
    
    _loginButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _loginButton.backgroundColor = [UIColor grayColor];
    [_loginButton setTitle:@"已有账号，点击登录" forState:UIControlStateNormal];
    [_loginButton setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    [self addSubview:_loginButton];
    [_loginButton mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.mas_bottom).offset(-SIZE_HEIGHT * 0.3);
        make.height.equalTo(@(SIZE_HEIGHT * 0.03));
        make.left.equalTo(self.mas_centerX).offset(-SIZE_WIDTH * 0.2);
        make.width.equalTo(@(SIZE_WIDTH * 0.4));
    }];
    
    _phoneNumberTextField = [[UITextField alloc] init];
    _phoneNumberTextField.backgroundColor = [UIColor clearColor];
    _phoneNumberTextField.placeholder = @"请输入手机号码";
    _phoneNumberTextField.textColor = [UIColor blackColor];
    _phoneNumberTextField.keyboardType = UIKeyboardTypeDefault;
    _phoneNumberTextField.font = [UIFont systemFontOfSize:20];
    [self addSubview:_phoneNumberTextField];
    [_phoneNumberTextField mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.mas_centerY).offset(-SIZE_HEIGHT * 0.1);
        make.height.equalTo(@(SIZE_HEIGHT * 0.04));
        make.left.equalTo(self.mas_centerX).offset(-SIZE_WIDTH * 0.28);
        make.width.equalTo(@(SIZE_WIDTH * 0.56));
    }];
    
    _validationTextField = [[UITextField alloc] init];
    _validationTextField.backgroundColor = [UIColor clearColor];
    _validationTextField.placeholder = @"请输入验证码";
    _validationTextField.textColor = [UIColor blackColor];
    _validationTextField.keyboardType = UIKeyboardTypeDefault;
    _validationTextField.font = [UIFont systemFontOfSize:20];
    [self addSubview:_validationTextField];
    [_validationTextField mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.phoneNumberLabel.mas_bottom).offset(SIZE_HEIGHT * 0.02);
        make.height.equalTo(@(SIZE_HEIGHT * 0.04));
        make.left.equalTo(self.mas_centerX).offset(-SIZE_WIDTH * 0.28);
        make.width.equalTo(@(SIZE_WIDTH * 0.56));
    }];
    
    return self;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [_phoneNumberTextField resignFirstResponder];
    [_validationTextField resignFirstResponder];
}

@end
