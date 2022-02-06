//
//  PickerSettingViewController.m
//  PUK
//
//  Created by 浪极 on 2022/1/22.
//

#import "PickerSettingViewController.h"

@interface PickerSettingViewController ()

@end

@implementation PickerSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _pickerSettingView = [[PickerSettingView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:_pickerSettingView];
}

@end
