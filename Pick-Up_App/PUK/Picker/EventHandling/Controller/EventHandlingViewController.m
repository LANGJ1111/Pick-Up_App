//
//  EventHandlingViewController.m
//  PUK
//
//  Created by 浪极 on 2022/1/22.
//

#import "EventHandlingViewController.h"
#import "BaseScanVC.h"
#import "SpecificEventViewController.h"

@interface EventHandlingViewController ()

@end

@implementation EventHandlingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _eventHandlingView = [[EventHandlingView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:_eventHandlingView];
    
//    CreatQRCodeViewController *scanGUIOne = [[CreatQRCodeViewController alloc] init];
//    UINavigationController *base = [[UINavigationController alloc] initWithRootViewController:scanGUIOne];
//    NSArray* controllerArray = [NSArray arrayWithObjects:base, nil];
//    UITabBarController* tabBarController = [[UITabBarController alloc] init];
//    tabBarController.viewControllers = controllerArray;
//    tabBarController.tabBar.tintColor = [UIColor colorWithRed:0.2 green:0.6 blue:0.9 alpha:1];
//    tabBarController.tabBar.barTintColor = [UIColor whiteColor];
//    tabBarController.tabBar.translucent = YES;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(pressEventHandlingCell) name:@"eventHandlingCell" object:nil];
}

- (void)pressEventHandlingCell {
    SpecificEventViewController *viewController = [[SpecificEventViewController alloc] init];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:viewController];
    navigationController.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:navigationController animated:YES completion:nil];
}

@end
