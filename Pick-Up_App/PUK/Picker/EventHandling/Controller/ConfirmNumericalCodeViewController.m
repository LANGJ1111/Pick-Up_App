//
//  ConfirmNumericalCodeViewController.m
//  PUK
//
//  Created by 浪极 on 2022/2/4.
//

#import "ConfirmNumericalCodeViewController.h"
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define SCREEN_WIDTH  [UIScreen mainScreen].bounds.size.width

@interface ConfirmNumericalCodeViewController ()

@property (nonatomic, strong) UIView *mainView;

@end

@implementation ConfirmNumericalCodeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    UITextField *field = [[UITextField alloc] initWithFrame:CGRectMake(100, 200, 300, 100)];
    field.placeholder = @"请输入确认数字码";
    [self.view addSubview:field];
    
    _mainView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
//    _mainView.backgroundColor = [UIColor tintColor];
    [_mainView sendSubviewToBack:self.view];
    [self.view addSubview:_mainView];
    
    //创建手势对象（左扫）
    UISwipeGestureRecognizer *rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeClick:)];

    //设置相关属性
    //设置轻扫的方向
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;

    //添加到视图
    [_mainView addGestureRecognizer:rightSwipe];
}

- (void)swipeClick:(UISwipeGestureRecognizer *)swipe {
    //如果是右扫
    if (swipe.direction == UISwipeGestureRecognizerDirectionRight) {
        [self.navigationController popViewControllerAnimated:YES];
    }
}

@end
