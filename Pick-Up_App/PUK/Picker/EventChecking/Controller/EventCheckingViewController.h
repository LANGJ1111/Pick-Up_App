//
//  EventCheckingViewController.h
//  PUK
//
//  Created by 浪极 on 2022/1/22.
//

#import <UIKit/UIKit.h>
#import <MAMapKit/MAMapKit.h>
#import <AMapFoundationKit/AMapFoundationKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface EventCheckingViewController : UIViewController

//地图的属性
@property (nonatomic, strong) MAMapView *mapView;
//显示用户当前位置的属性
@property (nonatomic, strong) MAUserLocationRepresentation *r;

//下方为自己编写的绘制轨迹图的相关属性
//包含近两次用户当前纬度位置的数组
@property (nonatomic, strong) NSMutableArray *contentArray;
//包含近两次用户当前经度位置的数组
@property (nonatomic, strong) NSMutableArray *contentArraySecond;
//刷新绘制路线的计时器
@property (nonatomic, retain) NSTimer *timerTest;
@property (nonatomic, assign) NSInteger flag;


@end

NS_ASSUME_NONNULL_END
