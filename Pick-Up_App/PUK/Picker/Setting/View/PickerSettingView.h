//
//  PickerSettingView.h
//  PUK
//
//  Created by 浪极 on 2022/2/6.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PickerSettingView : UIView <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView* pickerSettingTableView;
@property (nonatomic, strong) UILabel* pickerNameLabel;
@property (nonatomic ,strong) UIImageView* pickerPhotoImage;
@property (nonatomic ,strong) NSArray* settingArray;


@end

NS_ASSUME_NONNULL_END
