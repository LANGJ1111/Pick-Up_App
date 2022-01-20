//
//  KidPhotoTableViewCell.h
//  PUK
//
//  Created by mac on 2022/1/18.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface KidPhotoTableViewCell : UITableViewCell
@property (nonatomic, strong) UILabel* schollNameLabel;
@property (nonatomic, strong) UILabel* gradeLabel;
@property (nonatomic, strong) UILabel* kidNumberLabel;
@property (nonatomic, strong) UILabel* teacherNameLabel;
@property (nonatomic, strong) UILabel* guardianNameLabel;
@property (nonatomic, strong) UIImageView* kidPhotoImageView;
@end

NS_ASSUME_NONNULL_END
