//
//  SchoolInformationViewController.m
//  PUK
//
//  Created by 浪极 on 2022/1/22.
//

#import "SchoolInformationViewController.h"

@interface SchoolInformationViewController ()

@end

@implementation SchoolInformationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _schoolInformationView = [[SchoolInformationView alloc] initWithFrame:self.view.frame];
    _schoolInformationView.schoolInformationHeadScrollView.delegate = self;
    _schoolInformationView.scrollViewTimer = [NSTimer scheduledTimerWithTimeInterval:4 target:self selector:@selector(autoRepeat) userInfo:nil repeats:YES];
    [self.view addSubview:_schoolInformationView];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if (scrollView.tag == 601) {
        if (scrollView.contentOffset.x == [UIScreen mainScreen].bounds.size.width * 6){
            _schoolInformationView.schoolInformationHeadScrollView.contentOffset = CGPointMake([UIScreen mainScreen].bounds.size.width, 0);
        }
        if (scrollView.contentOffset.x == 0){
            _schoolInformationView.schoolInformationHeadScrollView.contentOffset = CGPointMake([UIScreen mainScreen].bounds.size.width * 5, 0);
        }
        CGFloat offsetX = _schoolInformationView.schoolInformationHeadScrollView.contentOffset.x + [UIScreen mainScreen].bounds.size.width * 0.5;
        int page = offsetX / [UIScreen mainScreen].bounds.size.width;
        if (page == 6) {
            _schoolInformationView.pageControl.currentPage = 0;
        } else if (page == 0) {
            _schoolInformationView.pageControl.currentPage = 4;
        } else {
            _schoolInformationView.pageControl.currentPage = page - 1;
        }
    }
}

- (void)autoRepeat {
    if (_schoolInformationView.schoolInformationHeadScrollView.contentOffset.x == [UIScreen mainScreen].bounds.size.width * 6.5) {
        _schoolInformationView.schoolInformationHeadScrollView.contentOffset = CGPointMake([UIScreen mainScreen].bounds.size.width, 0);
    } else {
        CGFloat offsetX = _schoolInformationView.schoolInformationHeadScrollView.contentOffset.x + [UIScreen mainScreen].bounds.size.width;
        [_schoolInformationView.schoolInformationHeadScrollView setContentOffset:CGPointMake(offsetX, 0) animated:YES];
    }
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    if (scrollView.tag == 601) {
        [_schoolInformationView.scrollViewTimer invalidate];
    }
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    if (scrollView.tag == 601) {
        _schoolInformationView.scrollViewTimer = [NSTimer scheduledTimerWithTimeInterval:4 target:self selector:@selector(autoRepeat) userInfo:nil repeats:YES];
    }
}

@end

