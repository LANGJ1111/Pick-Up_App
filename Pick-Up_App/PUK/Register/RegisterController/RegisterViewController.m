//
//  RegisterViewController.m
//  PUK
//
//  Created by mac on 2021/12/31.
//

#import "RegisterViewController.h"
#import "LoginViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _registerView = [[RegisterView alloc] initWithFrame:self.view.frame];
    [_registerView.loginButton addTarget:self action:@selector(pressLoginButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_registerView];
}

- (void)pressLoginButton {
    LoginViewController* loginViewController = [[LoginViewController alloc] init];
    loginViewController.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:loginViewController animated:NO completion:nil];
    [self.presentingViewController dismissViewControllerAnimated:NO completion:nil];
}

@end
