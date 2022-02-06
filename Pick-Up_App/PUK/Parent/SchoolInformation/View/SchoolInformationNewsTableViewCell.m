//
//  SchoolInformationNewsTableViewCell.m
//  PUK
//
//  Created by 浪极 on 2022/2/6.
//

#import "SchoolInformationNewsTableViewCell.h"
#import "Masonry.h"
#define SIZE_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SIZE_HEIGHT ([UIScreen mainScreen].bounds.size.height)

@implementation SchoolInformationNewsTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if ([self.reuseIdentifier isEqualToString:@"SchoolNews"]) {
        //self.selectionStyle = UITableViewCellSelectionStyleNone;
        
        _bigTitleNewsLabel = [[UILabel alloc] init];
        _bigTitleNewsLabel.textAlignment = NSTextAlignmentLeft;
        _bigTitleNewsLabel.textColor = [UIColor blackColor];
        _bigTitleNewsLabel.numberOfLines = 2;
        [_bigTitleNewsLabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:25]];
        [self.contentView addSubview:_bigTitleNewsLabel];
        
        _authorTitleNewsLabel = [[UILabel alloc] init];
        _authorTitleNewsLabel.textAlignment = NSTextAlignmentLeft;
        _authorTitleNewsLabel.textColor = [UIColor blackColor];
        _authorTitleNewsLabel.font = [UIFont systemFontOfSize:19];
        [self.contentView addSubview:_authorTitleNewsLabel];
        [_authorTitleNewsLabel sizeToFit];
        
        _timeTitleNewsLabel = [[UILabel alloc] init];
        _timeTitleNewsLabel.textAlignment = NSTextAlignmentLeft;
        _timeTitleNewsLabel.textColor = [UIColor grayColor];
        _timeTitleNewsLabel.font = [UIFont systemFontOfSize:16];
        [self.contentView addSubview:_timeTitleNewsLabel];
        
        _visitNumberNewsLabel = [[UILabel alloc] init];
        _visitNumberNewsLabel.textAlignment = NSTextAlignmentRight;
        _visitNumberNewsLabel.textColor = [UIColor colorWithRed:0 green:0.4 blue:0.4 alpha:1];
        _visitNumberNewsLabel.font = [UIFont systemFontOfSize:16];
        [self.contentView addSubview:_visitNumberNewsLabel];
        
        _lineLabel = [[UILabel alloc] init];
        _lineLabel.backgroundColor = [UIColor blackColor];
        [self.contentView addSubview:_lineLabel];
  
        _photoTitleNewsImageView = [[UIImageView alloc] init];
        [_photoTitleNewsImageView.layer setMasksToBounds:YES];
        [_photoTitleNewsImageView.layer setCornerRadius:4];
        [self.contentView addSubview:_photoTitleNewsImageView];
        
        _arrowTipNewsImageView = [[UIImageView alloc] init];
        _arrowTipNewsImageView.image = [UIImage imageNamed:@"arrow-right.png"];
        [self.contentView addSubview:_arrowTipNewsImageView];
        
        [self layoutSubviews];
    }
    return self;
}

- (void)layoutSubviews {
    [_bigTitleNewsLabel mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(@(SIZE_HEIGHT * 0.003));
        make.left.equalTo(@(SIZE_WIDTH * 0.02));
        make.width.equalTo(@(SIZE_WIDTH * 0.7));
        make.bottom.equalTo(@(-SIZE_HEIGHT * 0.05));
    }];
    
    [_authorTitleNewsLabel mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(_bigTitleNewsLabel.mas_bottom).offset((SIZE_HEIGHT * 0.02));
        make.left.equalTo(@(SIZE_WIDTH * 0.02));
        make.width.equalTo(@(SIZE_WIDTH * 0.2));
        make.height.equalTo(@(SIZE_HEIGHT * 0.02));
    }];
    
    [_timeTitleNewsLabel mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(_authorTitleNewsLabel.mas_top);
        make.left.equalTo(_authorTitleNewsLabel.mas_right).offset(SIZE_HEIGHT * 0.02);
        make.width.equalTo(@(SIZE_WIDTH * 0.2));
        make.height.equalTo(@(SIZE_HEIGHT * 0.02));
    }];
    
    [_visitNumberNewsLabel mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.mas_top).offset(SIZE_HEIGHT * 0.002);
        make.right.equalTo(_arrowTipNewsImageView.mas_left).offset(-SIZE_WIDTH * 0.005);
        make.width.equalTo(@(SIZE_WIDTH * 0.3));
        make.height.equalTo(@(SIZE_WIDTH * 0.05));
    }];
    
    [_lineLabel mas_makeConstraints:^(MASConstraintMaker* make) {
        make.bottom.equalTo(self.mas_bottom);
        make.left.equalTo(@0);
        make.width.equalTo(@(SIZE_WIDTH));
        make.height.equalTo(@(0.3));
    }];
    
    [_photoTitleNewsImageView mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(@(SIZE_HEIGHT * 0.035));
        make.right.equalTo(@(-SIZE_WIDTH * 0.02));
        make.width.equalTo(@(SIZE_HEIGHT * 0.1));
        make.height.equalTo(@(SIZE_HEIGHT * 0.1));
    }];
    
    [_arrowTipNewsImageView mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(@(SIZE_HEIGHT * 0.002));
        make.right.equalTo(@(-SIZE_WIDTH * 0.01));
        make.width.equalTo(@(SIZE_WIDTH * 0.05));
        make.height.equalTo(@(SIZE_WIDTH * 0.05));
    }];
    
}

@end
