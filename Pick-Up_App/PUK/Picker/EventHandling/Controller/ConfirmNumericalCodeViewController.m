//
//  ConfirmNumericalCodeViewController.m
//  PUK
//
//  Created by 浪极 on 2022/2/4.
//

#import "ConfirmNumericalCodeViewController.h"

@interface ConfirmNumericalCodeViewController ()

@end

@implementation ConfirmNumericalCodeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    UITextField *field = [[UITextField alloc] initWithFrame:CGRectMake(100, 200, 300, 100)];
    field.placeholder = @"请输入确认数字码";
    [self.view addSubview:field];
}

@end
