//
//  SchoolInformationView.m
//  PUK
//
//  Created by 浪极 on 2022/2/6.
//

#import "SchoolInformationView.h"
#import "Masonry.h"
#import "SchoolInformationNewsTableViewCell.h"
#define SIZE_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SIZE_HEIGHT ([UIScreen mainScreen].bounds.size.height)

@implementation SchoolInformationView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    self.backgroundColor = [UIColor whiteColor];
    
    _schoolInformationHeadBigLabelArray = @[@"图片一图片一图片一图片一图片一", @"图片二图片二图片二图片二图片二", @"图片三图片三图片三图片三图片", @"图片四图片四图片四图片四", @"图片五图片五图片"];
    
    _schoolInformationMainTableView = [[UITableView alloc] init];
    _schoolInformationMainTableView.backgroundColor = [UIColor whiteColor];
    _schoolInformationMainTableView.delegate = self;
    _schoolInformationMainTableView.dataSource = self;
    _schoolInformationMainTableView.tag = 600;
    [_schoolInformationMainTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"normal"];
    [_schoolInformationMainTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"HeadLine"];
    [_schoolInformationMainTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Replay"];
    [_schoolInformationMainTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"BigNewsTitle"];
    [_schoolInformationMainTableView registerClass:[SchoolInformationNewsTableViewCell class] forCellReuseIdentifier:@"SchoolNews"];
    [self addSubview:_schoolInformationMainTableView];
    [_schoolInformationMainTableView mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.mas_top).offset(0);
        make.height.equalTo(@(SIZE_HEIGHT));
        make.left.equalTo(self.mas_left).offset(0);
        make.width.equalTo(@(SIZE_WIDTH));
    }];
    
    _schoolInformationHeadScrollView = [[UIScrollView alloc] init];
    _schoolInformationHeadScrollView.backgroundColor = [UIColor blueColor];
    _schoolInformationHeadScrollView.contentSize = CGSizeMake(SIZE_WIDTH * 7, SIZE_HEIGHT * 0.3);
    _schoolInformationHeadScrollView.pagingEnabled = YES;
    _schoolInformationHeadScrollView.showsHorizontalScrollIndicator = NO;
    _schoolInformationHeadScrollView.bounces = NO;
    _schoolInformationHeadScrollView.tag = 601;
    _schoolInformationHeadScrollView.delegate = self;
    _schoolInformationHeadScrollView.contentOffset = CGPointMake(SIZE_WIDTH, 0);
    
    for (int j = 0, i = 4, k = 0; j < 2; j++) {
        if (j == 1) {
            i = 0;
            k = 6;
        }
        NSString* homeScrollImageName = [NSString stringWithFormat:@"pic%d.jpg",i + 1];
        UIImage *homeScrollImage = [UIImage imageNamed:homeScrollImageName];
        UIImageView* homeScrollImageView = [[UIImageView alloc] initWithImage:homeScrollImage];
        [_schoolInformationHeadScrollView addSubview:homeScrollImageView];
        [homeScrollImageView mas_makeConstraints:^(MASConstraintMaker* make) {
            make.top.equalTo(@0);
            make.left.equalTo(@(k * SIZE_WIDTH));
            make.width.equalTo(@SIZE_WIDTH);
            make.height.equalTo(@(SIZE_HEIGHT * 0.3));
        }];
        
        UILabel* homeScrollBigLabel = [[UILabel alloc] init];
        homeScrollBigLabel.text = _schoolInformationHeadBigLabelArray[i];
        [homeScrollBigLabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:21]];
        homeScrollBigLabel.textColor = [UIColor whiteColor];
        homeScrollBigLabel.textAlignment = NSTextAlignmentLeft;
        homeScrollBigLabel.numberOfLines = 1;
        homeScrollBigLabel.backgroundColor = [UIColor clearColor];
        [_schoolInformationHeadScrollView addSubview:homeScrollBigLabel];
        [homeScrollBigLabel mas_makeConstraints:^(MASConstraintMaker* make) {
            make.top.equalTo(@(SIZE_HEIGHT * 0.3));
            make.left.equalTo(@(k * SIZE_WIDTH + 20));
            make.width.equalTo(@(SIZE_WIDTH - 60));
            make.height.equalTo(@(SIZE_HEIGHT * 0.05));
        }];
    
    }
    
    for (int i = 0; i < 5; i++) {
        NSString* homeScrollImageName = [NSString stringWithFormat:@"pic%d.jpg",i + 1];
        UIImage *homeScrollImage = [UIImage imageNamed:homeScrollImageName];
        UIImageView* homeScrollImageView = [[UIImageView alloc] initWithImage:homeScrollImage];
        [_schoolInformationHeadScrollView addSubview:homeScrollImageView];
        [homeScrollImageView mas_makeConstraints:^(MASConstraintMaker* make) {
            make.top.equalTo(@0);
            make.left.equalTo(@((i+1) * SIZE_WIDTH));
            make.width.equalTo(@SIZE_WIDTH);
            make.height.equalTo(@(SIZE_HEIGHT * 0.3));
        }];
        
        UILabel* homeScrollBigLabel = [[UILabel alloc] init];
        homeScrollBigLabel.text = _schoolInformationHeadBigLabelArray[i];
        [homeScrollBigLabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:21]];
        homeScrollBigLabel.textColor = [UIColor whiteColor];
        homeScrollBigLabel.textAlignment = NSTextAlignmentLeft;
        homeScrollBigLabel.numberOfLines = 1;
        homeScrollBigLabel.backgroundColor = [UIColor clearColor];
        [_schoolInformationHeadScrollView addSubview:homeScrollBigLabel];
        [homeScrollBigLabel mas_makeConstraints:^(MASConstraintMaker* make) {
            make.top.equalTo(@(SIZE_HEIGHT * 0.3));
            make.left.equalTo(@((i+1) * SIZE_WIDTH + 20));
            make.width.equalTo(@(SIZE_WIDTH - 60));
            make.height.equalTo(@(SIZE_HEIGHT * 0.05));
        }];
    }
    
    _pageControl = [[UIPageControl alloc] init];
    _pageControl.pageIndicatorTintColor = [UIColor colorWithWhite:0.8 alpha:0];
    _pageControl.numberOfPages = 5;
    _pageControl.currentPage = 0;
    _pageControl.currentPageIndicatorTintColor = [UIColor whiteColor];
    _pageControl.pageIndicatorTintColor = [UIColor grayColor];
    
    _replayButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_replayButton setImage:[UIImage imageNamed:@"laba.png"] forState:UIControlStateNormal];
    _replayButton.backgroundColor = [UIColor clearColor];
    
    _replayWordsLabel = [[UILabel alloc] init];
    _replayWordsLabel.text = @"There is no announcement yet.";
    _replayWordsLabel.backgroundColor = [UIColor clearColor];
    _replayWordsLabel.font = [UIFont systemFontOfSize:21];
    
    
    _replayBigWordsLabel = [[UILabel alloc] init];
    _replayBigWordsLabel.text = @"紧急公告";
    _replayBigWordsLabel.backgroundColor = [UIColor clearColor];
    [_replayBigWordsLabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:33]];
    _replayBigWordsLabel.textAlignment = NSTextAlignmentCenter;
    
    _newsTitleBigLabel = [[UILabel alloc] init];
    _newsTitleBigLabel.text = @"热点";
    _newsTitleBigLabel.backgroundColor = [UIColor clearColor];
    [_newsTitleBigLabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:30]];
    _newsTitleBigLabel.textAlignment = NSTextAlignmentCenter;
    
    _firstTipNewsTitleBigLabel = [[UILabel alloc] init];
    _firstTipNewsTitleBigLabel.backgroundColor = [UIColor blackColor];
    
    _secondTipNewsTitleBigLabel = [[UILabel alloc] init];
    _secondTipNewsTitleBigLabel.backgroundColor = [UIColor blackColor];
        
    return self;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 3;
    }
    return 7;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            return SIZE_HEIGHT* 0.35;
        } else if (indexPath.row == 1) {
            return SIZE_HEIGHT* 0.2;
        } else {
            return SIZE_HEIGHT* 0.05;
        }
    } else {
        return SIZE_HEIGHT * 0.14;
    }

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            UITableViewCell* headLineCell = [_schoolInformationMainTableView dequeueReusableCellWithIdentifier:@"HeadLine" forIndexPath:indexPath];
            [headLineCell addSubview:_schoolInformationHeadScrollView];
            [headLineCell addSubview:_pageControl];
            
            [_schoolInformationHeadScrollView mas_makeConstraints:^(MASConstraintMaker* make) {
                make.top.equalTo(@0);
                make.left.equalTo(@0);
                make.width.equalTo(@SIZE_WIDTH);
                make.bottom.equalTo(@(0));
            }];
            [_pageControl mas_makeConstraints:^(MASConstraintMaker* make) {
                make.top.equalTo(@(SIZE_HEIGHT*0.25));
                make.centerX.equalTo(headLineCell.mas_centerX).offset(0);
                make.width.equalTo(@(SIZE_WIDTH));
                make.height.equalTo(@(SIZE_HEIGHT*0.05));
            }];
            return headLineCell;
            
        } else if (indexPath.row == 1) {
            UITableViewCell* replayCell = [_schoolInformationMainTableView dequeueReusableCellWithIdentifier:@"Replay" forIndexPath:indexPath];
            [replayCell addSubview:_replayButton];
            [replayCell addSubview:_replayWordsLabel];
            [replayCell addSubview:_replayBigWordsLabel];
            [_replayButton mas_makeConstraints:^(MASConstraintMaker* make) {
                make.top.equalTo(@(SIZE_HEIGHT*0.05));
                make.left.equalTo(replayCell.mas_left).offset(SIZE_WIDTH*0.05);
                make.width.equalTo(@(SIZE_WIDTH*0.1));
                make.height.equalTo(@(SIZE_HEIGHT*0.03));
            }];
            [_replayWordsLabel mas_makeConstraints:^(MASConstraintMaker* make) {
                make.top.equalTo(@(SIZE_HEIGHT*0.12));
                make.centerX.equalTo(replayCell.mas_centerX).offset(0);
                make.width.equalTo(@(SIZE_WIDTH*0.8));
                make.bottom.equalTo(@(-SIZE_HEIGHT*0.05));
            }];
            
            [_replayBigWordsLabel mas_makeConstraints:^(MASConstraintMaker* make) {
                make.top.equalTo(@(SIZE_HEIGHT*0.01));
                make.centerX.equalTo(replayCell.mas_centerX).offset(0);
                make.width.equalTo(@(SIZE_WIDTH));
                make.height.equalTo(@(SIZE_HEIGHT*0.06));
            }];
            
            return replayCell;
        } else {
            UITableViewCell* BigNewsTitleCell = [_schoolInformationMainTableView dequeueReusableCellWithIdentifier:@"BigNewsTitle" forIndexPath:indexPath];
            [BigNewsTitleCell addSubview:_newsTitleBigLabel];
            [BigNewsTitleCell addSubview:_firstTipNewsTitleBigLabel];
            [BigNewsTitleCell addSubview:_secondTipNewsTitleBigLabel];
            
            [_newsTitleBigLabel mas_makeConstraints:^(MASConstraintMaker* make) {
                make.top.equalTo(@0);
                make.centerX.equalTo(BigNewsTitleCell.mas_centerX).offset(0);
                make.width.equalTo(@(SIZE_WIDTH));
                make.bottom.equalTo(BigNewsTitleCell.mas_bottom);
            }];
            [_firstTipNewsTitleBigLabel mas_makeConstraints:^(MASConstraintMaker* make) {
                make.top.equalTo(@0);
                make.left.equalTo(@0);
                make.width.equalTo(@(SIZE_WIDTH));
                make.height.equalTo(@0.5);
            }];
            [_secondTipNewsTitleBigLabel mas_makeConstraints:^(MASConstraintMaker* make) {
                make.bottom.equalTo(@0);
                make.left.equalTo(@0);
                make.width.equalTo(@(SIZE_WIDTH));
                make.height.equalTo(@0.5);
            }];
            
            return BigNewsTitleCell;
        }
    }
    SchoolInformationNewsTableViewCell* schoolNewsCell = [_schoolInformationMainTableView dequeueReusableCellWithIdentifier:@"SchoolNews" forIndexPath:indexPath];
    schoolNewsCell.bigTitleNewsLabel.text = @"恭喜张佳乔晋升为苹果公司CEO!";
    schoolNewsCell.authorTitleNewsLabel.text = @"@朱方元";
    schoolNewsCell.timeTitleNewsLabel.text = @"2022.2.5";
    schoolNewsCell.photoTitleNewsImageView.image = [UIImage imageNamed:@"pic10.jpg"];
    schoolNewsCell.visitNumberNewsLabel.text = @"188 次浏览";
    return schoolNewsCell;
    
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    if (scrollView.tag == 600) {
        [_scrollViewTimer invalidate];
    }
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    if (scrollView.tag == 600) {
        _scrollViewTimer = [NSTimer scheduledTimerWithTimeInterval:4 target:self selector:@selector(autoRepeat) userInfo:nil repeats:YES];
    }
}

- (void)autoRepeat {
    if (_schoolInformationHeadScrollView.contentOffset.x == [UIScreen mainScreen].bounds.size.width * 6.5) {
        _schoolInformationHeadScrollView.contentOffset = CGPointMake([UIScreen mainScreen].bounds.size.width, 0);
    } else {
        CGFloat offsetX = _schoolInformationHeadScrollView.contentOffset.x + [UIScreen mainScreen].bounds.size.width;
        [_schoolInformationHeadScrollView setContentOffset:CGPointMake(offsetX, 0) animated:YES];
    }
}

@end
