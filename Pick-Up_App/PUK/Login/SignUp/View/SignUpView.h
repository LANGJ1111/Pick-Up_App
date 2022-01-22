//
//  SignUpView.h
//  PUK
//
//  Created by 浪极 on 2022/1/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SignUpView : UIView <UITextFieldDelegate>

@property (nonatomic, strong) UIButton *loginButton;
@property (nonatomic, strong) UITextField *phoneNumberTextField;
@property (nonatomic, strong) UITextField *validationTextField;
@property (nonatomic, strong) UILabel *phoneNumberLabel;
@property (nonatomic, strong) UILabel *validationLabel;

@end

NS_ASSUME_NONNULL_END
