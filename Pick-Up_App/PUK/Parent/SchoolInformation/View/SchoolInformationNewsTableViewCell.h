//
//  SchoolInformationNewsTableViewCell.h
//  PUK
//
//  Created by 浪极 on 2022/2/6.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SchoolInformationNewsTableViewCell : UITableViewCell
@property (nonatomic, strong) UILabel* bigTitleNewsLabel;
@property (nonatomic, strong) UILabel* authorTitleNewsLabel;
@property (nonatomic, strong) UILabel* timeTitleNewsLabel;
@property (nonatomic, strong) UILabel* visitNumberNewsLabel;
@property (nonatomic, strong) UIImageView* photoTitleNewsImageView;
@property (nonatomic, strong) UIImageView* arrowTipNewsImageView;
@property (nonatomic, strong) UILabel* lineLabel;
@end

NS_ASSUME_NONNULL_END

