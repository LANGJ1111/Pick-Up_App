//
//  EventHandlingViewController.m
//  PUK
//
//  Created by 浪极 on 2022/1/22.
//

#import "EventHandlingViewController.h"
#import "BaseScanViewController.h"
#import "SpecificEventViewController.h"
#import "Masonry.h"
#define SIZE_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SIZE_HEIGHT ([UIScreen mainScreen].bounds.size.height)

@interface EventHandlingViewController ()

@end

@implementation EventHandlingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(pressEventHandlingCell) name:@"eventHandlingCell" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notificationSelectedKidNameListTableViewCell:) name:@"SelectedKidNameListTableViewCell" object:nil];
    
    _eventHandlingView = [[EventHandlingView alloc] initWithFrame:self.view.frame];
    [_eventHandlingView.kidNameListButton addTarget:self action:@selector(pressKidNameListButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_eventHandlingView];
    
//    CreatQRCodeViewController *scanGUIOne = [[CreatQRCodeViewController alloc] init];
//    UINavigationController *base = [[UINavigationController alloc] initWithRootViewController:scanGUIOne];
//    NSArray* controllerArray = [NSArray arrayWithObjects:base, nil];
//    UITabBarController* tabBarController = [[UITabBarController alloc] init];
//    tabBarController.viewControllers = controllerArray;
//    tabBarController.tabBar.tintColor = [UIColor colorWithRed:0.2 green:0.6 blue:0.9 alpha:1];
//    tabBarController.tabBar.barTintColor = [UIColor whiteColor];
//    tabBarController.tabBar.translucent = YES;
}

- (void)pressEventHandlingCell {
    SpecificEventViewController *viewController = [[SpecificEventViewController alloc] init];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:viewController];
    navigationController.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:navigationController animated:YES completion:nil];
}

- (void)pressKidNameListButton {
    if (_eventHandlingView.kidNameListButton.selected == NO) {
        _eventHandlingView.kidNameListButton.selected = YES;
        _eventHandlingView.kidNameListTableView.scrollEnabled = YES;
        [_eventHandlingView.kidNameListTableView mas_updateConstraints:^(MASConstraintMaker *make) {
            make.height.equalTo(@(SIZE_HEIGHT * 0.05 * 5));
        }];
    } else {
        _eventHandlingView.kidNameListButton.selected = NO;
        _eventHandlingView.kidNameListTableView.scrollEnabled = NO;
        [_eventHandlingView.kidNameListTableView mas_updateConstraints:^(MASConstraintMaker *make) {
            make.height.equalTo(@(SIZE_HEIGHT * 0.05));
        }];
    }
}

- (void)notificationSelectedKidNameListTableViewCell:(NSNotification *)text {
    _eventHandlingView.kidNameListButton.selected = NO;
    _eventHandlingView.kidNameListTableView.scrollEnabled = NO;
    [_eventHandlingView.kidNameListTableView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(@(SIZE_HEIGHT * 0.05));
    }];
    [UIView animateWithDuration:0 animations:^{
        [self->_eventHandlingView.kidNameListTableView layoutIfNeeded];
    }];
    [_eventHandlingView.kidNameListTableView scrollToRowAtIndexPath:text.object atScrollPosition:UITableViewScrollPositionTop animated:NO];
    [_eventHandlingView.mainKidTableView reloadData];
    
 }

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"SelectedKidNameListTableViewCell" object:self];
}

@end
