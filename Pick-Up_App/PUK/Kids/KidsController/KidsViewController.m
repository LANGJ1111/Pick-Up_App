//
//  KidsViewController.m
//  PUK
//
//  Created by mac on 2022/1/8.
//

#import "KidsViewController.h"

@interface KidsViewController ()

@end

@implementation KidsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _kidsView = [[KidsView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:_kidsView];
}

@end
