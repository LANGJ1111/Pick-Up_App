//
//  EventHandlingViewController.m
//  PUK
//
//  Created by 浪极 on 2022/1/22.
//

#import "EventHandlingViewController.h"

@interface EventHandlingViewController ()

@end

@implementation EventHandlingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _eventHandlingView = [[EventHandlingView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:_eventHandlingView];
}

@end
