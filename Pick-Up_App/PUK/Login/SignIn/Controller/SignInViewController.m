//
//  SignInViewController.m
//  PUK
//
//  Created by 浪极 on 2022/1/22.
//

#import "SignInViewController.h"
#import "SignUpViewController.h"

#import "EventCheckingViewController.h"
#import "EventHandlingViewController.h"
#import "PickerSettingViewController.h"

#import "KidStateCheckingViewController.h"
#import "EditingMenuViewController.h"
#import "SchoolInformationViewController.h"
#import "ParentSettingViewController.h"

#import "KidStateEditingViewController.h"
#import "EventConfirmViewController.h"
#import "SchoolInformationEditingViewController.h"
#import "TeacherSettingViewController.h"

@interface SignInViewController ()

@end

@implementation SignInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _signInView = [[SignInView alloc] initWithFrame:self.view.frame];
    [_signInView.registerButton addTarget:self action:@selector(pressRegisterButton) forControlEvents:UIControlEventTouchUpInside];
    [_signInView.loginButton addTarget:self action:@selector(pressLoginButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_signInView];
}

- (void)pressRegisterButton {
    
    _signUpViewController = [[SignUpViewController alloc] init];
    _signUpViewController.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:_signUpViewController animated:NO completion:nil];
    [self.presentingViewController dismissViewControllerAnimated:NO completion:nil];
}

- (void)pressLoginButton {
    if ([_signInView.usernameTextField.text isEqualToString:@"1"]) {
        
        EventHandlingViewController *pickerEventHandlingViewController = [[EventHandlingViewController alloc] init];
        EventCheckingViewController *pickerEventCheckingViewController = [[EventCheckingViewController alloc] init];
        PickerSettingViewController *pickerSettingViewController = [[PickerSettingViewController alloc] init];

        UINavigationController *handle = [[UINavigationController alloc] initWithRootViewController:pickerEventHandlingViewController];
        UINavigationController *check = [[UINavigationController alloc] initWithRootViewController:pickerEventCheckingViewController];
        UINavigationController *setting = [[UINavigationController alloc] initWithRootViewController:pickerSettingViewController];
        handle.title = @"处理接送事件";
        check.title = @"查看接送事件";
        setting.title = @"我的";
        handle.navigationBar.hidden = YES;
        check.navigationBar.hidden = YES;
        setting.navigationBar.hidden = YES;

        NSArray* controllerArray = [NSArray arrayWithObjects:handle, check, setting, nil];
        UITabBarController* tabBarController = [[UITabBarController alloc] init];
        tabBarController.viewControllers = controllerArray;
        tabBarController.tabBar.tintColor = [UIColor colorWithRed:0.2 green:0.6 blue:0.9 alpha:1];
        tabBarController.tabBar.barTintColor = [UIColor whiteColor];
        tabBarController.tabBar.translucent = YES;

        UIWindow* window = [UIApplication sharedApplication].windows[0];
        window.rootViewController = tabBarController;
        
        
    } else if ([_signInView.usernameTextField.text isEqualToString:@"2"]) {
        KidStateCheckingViewController *kidStateViewController = [[KidStateCheckingViewController alloc] init];
        EditingMenuViewController *editingMenuViewController = [[EditingMenuViewController alloc] init];
        SchoolInformationViewController *schoolInformationViewController = [[SchoolInformationViewController alloc] init];
        ParentSettingViewController *parentSettingViewController = [[ParentSettingViewController alloc] init];

        UINavigationController *kidState = [[UINavigationController alloc] initWithRootViewController:kidStateViewController];
        UINavigationController *eventEditing = [[UINavigationController alloc] initWithRootViewController:editingMenuViewController];
        UINavigationController *schoolInformation = [[UINavigationController alloc] initWithRootViewController:schoolInformationViewController];
        UINavigationController *setting = [[UINavigationController alloc] initWithRootViewController:parentSettingViewController];
        kidState.title = @"孩子当前状态";
        eventEditing.title = @"编辑接送事件";
        schoolInformation.title = @"学校信息";
        setting.title = @"我的";
        kidState.navigationBar.hidden = YES;
        eventEditing.navigationBar.hidden = YES;
        schoolInformation.navigationBar.hidden = YES;
        setting.navigationBar.hidden = YES;

        NSArray* controllerArray = [NSArray arrayWithObjects:kidState, eventEditing, schoolInformation, setting, nil];
        UITabBarController* tabBarController = [[UITabBarController alloc] init];
        tabBarController.viewControllers = controllerArray;
        tabBarController.tabBar.tintColor = [UIColor colorWithRed:0.2 green:0.6 blue:0.9 alpha:1];
        tabBarController.tabBar.barTintColor = [UIColor whiteColor];
        tabBarController.tabBar.translucent = YES;

        UIWindow* window = [UIApplication sharedApplication].windows[0];
        window.rootViewController = tabBarController;
        
        
    } else if ([_signInView.usernameTextField.text isEqualToString:@"3"]) {
        KidStateEditingViewController *kidStateEditingViewController = [[KidStateEditingViewController alloc] init];
        EventConfirmViewController *eventConfirmViewController = [[EventConfirmViewController alloc] init];
        SchoolInformationEditingViewController *schoolInformationEditingViewController = [[SchoolInformationEditingViewController alloc] init];
        TeacherSettingViewController *teacherSettingViewController = [[TeacherSettingViewController alloc] init];

        UINavigationController *stateEditing = [[UINavigationController alloc] initWithRootViewController:kidStateEditingViewController];
        UINavigationController *eventConfirm = [[UINavigationController alloc] initWithRootViewController:eventConfirmViewController];
        UINavigationController *information = [[UINavigationController alloc] initWithRootViewController:schoolInformationEditingViewController];
        UINavigationController *setting = [[UINavigationController alloc] initWithRootViewController:teacherSettingViewController];

        stateEditing.title = @"编辑孩子状态";
        eventConfirm.title = @"管理接送事件";
        information.title = @"编辑学校信息";
        setting.title = @"我的";

        setting.navigationBar.hidden = YES;
        eventConfirm.navigationBar.hidden = YES;
        information.navigationBar.hidden = YES;
        setting.navigationBar.hidden = YES;

        NSArray* controllerArray = [NSArray arrayWithObjects:setting, eventConfirm, information, setting, nil];
        UITabBarController* tabBarController = [[UITabBarController alloc] init];
        tabBarController.viewControllers = controllerArray;
        tabBarController.tabBar.tintColor = [UIColor colorWithRed:0.2 green:0.6 blue:0.9 alpha:1];
        tabBarController.tabBar.barTintColor = [UIColor whiteColor];
        tabBarController.tabBar.translucent = YES;

        UIWindow* window = [UIApplication sharedApplication].windows[0];
        window.rootViewController = tabBarController;
        
    } else {
        
    }
}
@end
