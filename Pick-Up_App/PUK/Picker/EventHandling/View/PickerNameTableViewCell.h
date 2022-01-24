//
//  PickerNameTableViewCell.h
//  PUK
//
//  Created by mac on 2022/1/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PickerNameTableViewCell : UITableViewCell
@property (nonatomic, strong) UILabel* tipLabel;
@property (nonatomic, strong) UILabel* pickerTimeLabel;
@property (nonatomic, strong) UILabel* pickerNameLabel;
@property (nonatomic, strong) UILabel* pickerLocationLabel;
@property (nonatomic, strong) UILabel* lineLabel;
@property (nonatomic, strong) UIImageView* pickerPhotoImageView;

@end

NS_ASSUME_NONNULL_END
