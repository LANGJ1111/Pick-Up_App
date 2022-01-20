//
//  RegisterView.h
//  PUK
//
//  Created by mac on 2021/12/31.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RegisterView : UIView <UITextFieldDelegate>
@property (nonatomic, strong) UIButton* loginButton;
@property (nonatomic, strong) UITextField* phoneNumberTextField;
@property (nonatomic, strong) UITextField* validationTextField;
@property (nonatomic, strong) UILabel* phoneNumberLabel;
@property (nonatomic, strong) UILabel* validationLabel;

@end

NS_ASSUME_NONNULL_END
