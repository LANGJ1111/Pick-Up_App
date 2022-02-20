//
//  EventCheckingViewController.h
//  PUK
//
//  Created by 浪极 on 2022/1/22.
//

#import <UIKit/UIKit.h>
#import <MAMapKit/MAMapKit.h>
#import <AMapFoundationKit/AMapFoundationKit.h>
#import <AMapLocationKit/AMapLocationKit.h>
#import <AMapSearchKit/AMapSearchKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface EventCheckingViewController : UIViewController <AMapLocationManagerDelegate, MAMapViewDelegate, AMapSearchDelegate>

//地图的属性
@property (nonatomic, strong) MAMapView *mapView;

@property (strong, nonatomic) AMapLocationManager* locationManager;
@property (strong, nonatomic) AMapSearchAPI* searchAPI;
@property (strong, nonatomic) AMapTip* tipTemp;
@property (strong, nonatomic) MAPointAnnotation *pointAnnotation;
@property (nonatomic, retain) NSArray *pathPolylines;
@property (nonatomic, assign) BOOL locatingWithReGeocode;


@end

NS_ASSUME_NONNULL_END
