//
//  SignUpViewController.m
//  PUK
//
//  Created by 浪极 on 2022/1/22.
//

#import "SignUpViewController.h"
#import "SignInViewController.h"

@interface SignUpViewController ()

@end

@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _signUpView = [[SignUpView alloc] initWithFrame:self.view.frame];
    [_signUpView.loginButton addTarget:self action:@selector(pressLoginButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_signUpView];
}

- (void)pressLoginButton {
    SignInViewController* signInViewController = [[SignInViewController alloc] init];
    signInViewController.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:signInViewController animated:NO completion:nil];
    [self.presentingViewController dismissViewControllerAnimated:NO completion:nil];
}

@end
