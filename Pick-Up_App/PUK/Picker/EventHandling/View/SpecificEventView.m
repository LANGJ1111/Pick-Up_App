//
//  SpecificEventView.m
//  PUK
//
//  Created by 浪极 on 2022/2/4.
//

#import "SpecificEventView.h"

@implementation SpecificEventView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    _SEOneLabel = [[UILabel alloc] init];
    _SEOneLabel.frame = CGRectMake(50, 100, 300, 50);
    _SEOneLabel.text = @"当前孩子状态：";
    _SEOneLabel.font = [UIFont systemFontOfSize:25];
    _SEOneLabel.textColor = [UIColor grayColor];
    _SEOneLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:_SEOneLabel];
    
    _SETwoLabel = [[UILabel alloc] init];
    _SETwoLabel.frame = CGRectMake(50, 150, 300, 100);
    if (1) {
        _SETwoLabel.text = @"在学校";
    } else if (0) {
        _SETwoLabel.text = @"接送中";
    } else if (0) {
        _SETwoLabel.text = @"在家里";
    }  else {
        _SETwoLabel.text = @"错误状态";
    }
    _SETwoLabel.font = [UIFont systemFontOfSize:80];
    _SETwoLabel.textColor = [UIColor greenColor];
    _SETwoLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:_SETwoLabel];
    
    _SEThreeLabel = [[UILabel alloc] init];
    _SEThreeLabel.frame = CGRectMake(50, 400, 300, 50);
    _SEThreeLabel.text = @"请选择您的操作方式：";
    _SEThreeLabel.font = [UIFont systemFontOfSize:25];
    _SEThreeLabel.textColor = [UIColor grayColor];
    _SEThreeLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:_SEThreeLabel];
    
    _QRCodeButton = [[UIButton alloc] init];
    _QRCodeButton.frame = CGRectMake(50, 500, 300, 100);
    _QRCodeButton.backgroundColor = [UIColor grayColor];
    [_QRCodeButton setTitle:@"二维码确认" forState:UIControlStateNormal];
    [_QRCodeButton setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    _QRCodeButton.titleLabel.textAlignment = NSTextAlignmentCenter;
    _QRCodeButton.titleLabel.font = [UIFont systemFontOfSize:30];
    //按钮圆角
    _QRCodeButton.layer.masksToBounds = YES;
    _QRCodeButton.layer.cornerRadius = 10;
    [self addSubview:_QRCodeButton];
    
    _numericalCodeButton = [[UIButton alloc] init];
    _numericalCodeButton.frame = CGRectMake(50, 650, 300, 100);
    _numericalCodeButton.backgroundColor = [UIColor grayColor];
    [_numericalCodeButton setTitle:@"数字码确认" forState:UIControlStateNormal];
    [_numericalCodeButton setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    _numericalCodeButton.titleLabel.textAlignment = NSTextAlignmentCenter;
    _numericalCodeButton.titleLabel.font = [UIFont systemFontOfSize:30];
    //按钮圆角
    _numericalCodeButton.layer.masksToBounds = YES;
    _numericalCodeButton.layer.cornerRadius = 10;
    [self addSubview:_numericalCodeButton];

    return self;
}

@end
