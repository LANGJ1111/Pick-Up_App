//
//  PickerViewController.m
//  PUK
//
//  Created by mac on 2022/1/8.
//

#import "PickerViewController.h"

@interface PickerViewController ()

@end

@implementation PickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _pickerView = [[PickerView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:_pickerView];
}

@end
