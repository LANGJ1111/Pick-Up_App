//
//  SpecificEventViewController.m
//  PUK
//
//  Created by 浪极 on 2022/2/4.
//

#import "SpecificEventViewController.h"
#import "ScanQRCodeViewController.h"
#import "ConfirmNumericalCodeViewController.h"

@interface SpecificEventViewController ()

@end

@implementation SpecificEventViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithWhite:0.7 alpha:1];
    
    [self.navigationController setNavigationBarHidden:NO animated:NO];
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"fanhui111.png"] style:UIBarButtonItemStylePlain target:self action:@selector(pressBack)];
    self.navigationItem.leftBarButtonItem = backButton;
    
    _specificEventView = [[SpecificEventView alloc] initWithFrame:self.view.frame];
    [_specificEventView.QRCodeButton addTarget:self action:@selector(pressQRCodeButton) forControlEvents:UIControlEventTouchUpInside];
    [_specificEventView.numericalCodeButton addTarget:self action:@selector(pressNumericalCodeButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_specificEventView];
}

- (void)pressQRCodeButton {
    ScanQRCodeViewController *viewController = [[ScanQRCodeViewController alloc] init];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:viewController];
    navigationController.modalPresentationStyle = UIModalPresentationFullScreen;
    [self.navigationController pushViewController:viewController animated:NO];
}

- (void)pressNumericalCodeButton {
    ConfirmNumericalCodeViewController *viewController = [[ConfirmNumericalCodeViewController alloc] init];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:viewController];
    navigationController.modalPresentationStyle = UIModalPresentationFullScreen;
    [self.navigationController pushViewController:viewController animated:YES];
}

- (void)pressBack {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
