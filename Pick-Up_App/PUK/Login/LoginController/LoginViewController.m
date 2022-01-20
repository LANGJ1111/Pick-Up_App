//
//  LoginViewController.m
//  PUK
//
//  Created by mac on 2021/12/31.
//

#import "LoginViewController.h"
#import "RegisterViewController.h"
#import "KidsViewController.h"
#import "PickerViewController.h"
#import "NewsViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _loginView = [[LoginView alloc] initWithFrame:self.view.frame];
    [_loginView.registerButton addTarget:self action:@selector(pressRegisterButton) forControlEvents:UIControlEventTouchUpInside];
    [_loginView.loginButton addTarget:self action:@selector(pressLoginButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_loginView];
}

- (void)pressRegisterButton {
    
    _registerViewController = [[RegisterViewController alloc] init];
    _registerViewController.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:_registerViewController animated:NO completion:nil];
    [self.presentingViewController dismissViewControllerAnimated:NO completion:nil];
}

- (void)pressLoginButton {
    KidsViewController* kidsViewController = [[KidsViewController alloc] init];
    PickerViewController* pickerViewController = [[PickerViewController alloc] init];
    NewsViewController* newsViewController = [[NewsViewController alloc] init];
    

    UINavigationController* kids = [[UINavigationController alloc] initWithRootViewController:kidsViewController];
    UINavigationController* picker = [[UINavigationController alloc] initWithRootViewController:pickerViewController];
    UINavigationController* news = [[UINavigationController alloc] initWithRootViewController:newsViewController];
    
    
    kids.title = @"Kids";
    picker.title = @"Picker";
    news.title = @"News";
    
    kids.navigationBar.hidden = YES;
    picker.navigationBar.hidden = YES;
    news.navigationBar.hidden = YES;

    NSArray* controllerArray = [NSArray arrayWithObjects:kids, picker, news, nil];
    UITabBarController* tabBarController = [[UITabBarController alloc] init];
    tabBarController.viewControllers = controllerArray;
    tabBarController.tabBar.tintColor = [UIColor colorWithRed:0.2 green:0.6 blue:0.9 alpha:1];
    tabBarController.tabBar.barTintColor = [UIColor whiteColor];
    tabBarController.tabBar.translucent = YES;
    
    UIWindow* window = [UIApplication sharedApplication].windows[0];
    window.rootViewController = tabBarController;

}

@end
