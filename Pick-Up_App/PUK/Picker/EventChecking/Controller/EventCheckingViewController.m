//
//  EventCheckingViewController.m
//  PUK
//
//  Created by 浪极 on 2022/1/22.
//

#import "EventCheckingViewController.h"

@interface EventCheckingViewController ()

@end

@implementation EventCheckingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (@available(iOS 15.0, *)) {
        self.view.backgroundColor = [UIColor tintColor];
    } else {
        self.view.backgroundColor = [UIColor yellowColor];
    }
    
    [self setMapView];
}

- (void)setMapView {
    
    self.mapView = [[MAMapView alloc] initWithFrame:CGRectMake(50, 200, 350, 400)];
        _mapView.backgroundColor = [UIColor whiteColor];
        self.mapView.delegate = self;
        //设置定位精度
        _mapView.desiredAccuracy = kCLLocationAccuracyBest;
        //设置定位距离
        _mapView.distanceFilter = 1.0f;
        //普通样式
        _mapView.mapType = MAMapTypeStandard;
        //地图跟着位置移动
        [_mapView setUserTrackingMode:MAUserTrackingModeFollow animated:YES];
        //设置成NO表示关闭指南针；YES表示显示指南针
        _mapView.showsCompass= YES;
        //设置指南针位置
        _mapView.compassOrigin= CGPointMake(_mapView.compassOrigin.x, 22);
        //设置成NO表示不显示比例尺；YES表示显示比例尺
        _mapView.showsScale= YES;
        //设置比例尺位置
        _mapView.scaleOrigin= CGPointMake(_mapView.scaleOrigin.x, 22);
        //开启定位
        _mapView.showsUserLocation = YES;
        //缩放等级
        [_mapView setZoomLevel:18 animated:YES];
        
        [self.view addSubview:self.mapView];
}

@end
