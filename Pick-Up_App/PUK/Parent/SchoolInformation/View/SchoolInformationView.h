//
//  SchoolInformationView.h
//  PUK
//
//  Created by 浪极 on 2022/2/6.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SchoolInformationView : UIView <UIScrollViewDelegate, UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UIScrollView* schoolInformationHeadScrollView;
@property (nonatomic, strong) UITableView* schoolInformationMainTableView;
@property (nonatomic, strong) NSArray* schoolInformationHeadBigLabelArray;
@property (nonatomic, retain) NSTimer* scrollViewTimer;
@property (nonatomic, strong) UIPageControl* pageControl;
@property (nonatomic, strong) UIButton* replayButton;
@property (nonatomic, strong) UILabel* replayBigWordsLabel;
@property (nonatomic, strong) UILabel* replayWordsLabel;
@property (nonatomic, strong) UILabel* newsTitleBigLabel;
@property (nonatomic, strong) UILabel* firstTipNewsTitleBigLabel;
@property (nonatomic, strong) UILabel* secondTipNewsTitleBigLabel;

@end

NS_ASSUME_NONNULL_END
