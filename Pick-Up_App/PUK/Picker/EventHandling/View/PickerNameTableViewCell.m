//
//  PickerNameTableViewCell.m
//  PUK
//
//  Created by 浪极 on 2022/2/6.
//

#import "PickerNameTableViewCell.h"
#import "Masonry.h"
#define SIZE_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SIZE_HEIGHT ([UIScreen mainScreen].bounds.size.height)

@implementation PickerNameTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if ([self.reuseIdentifier isEqualToString:@"KidPickerInfomation"]) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.backgroundColor = [UIColor colorWithWhite:0.95 alpha:1];
        [self.layer setMasksToBounds:YES];
        [self.layer setCornerRadius:10];
        
        _tipLabel = [[UILabel alloc] init];
        _tipLabel.font = [UIFont systemFontOfSize:21];
        _tipLabel.text = @"Picker\nToday";
        _tipLabel.textColor = [UIColor redColor];
        _tipLabel.numberOfLines = 0;
        _tipLabel.textAlignment = NSTextAlignmentCenter;
        [self.contentView addSubview:_tipLabel];
        
        _pickerTimeLabel = [[UILabel alloc] init];
        _pickerTimeLabel.font = [UIFont systemFontOfSize:20];
        _pickerTimeLabel.textColor = [UIColor blackColor];
        [self.contentView addSubview:_pickerTimeLabel];
        
        _pickerNameLabel = [[UILabel alloc] init];
        _pickerNameLabel.font = [UIFont systemFontOfSize:20];
        _pickerNameLabel.textColor = [UIColor blackColor];
        [self.contentView addSubview:_pickerNameLabel];
        
        _pickerLocationLabel = [[UILabel alloc] init];
        _pickerLocationLabel.font = [UIFont systemFontOfSize:20];
        _pickerLocationLabel.textColor = [UIColor blackColor];
        [self.contentView addSubview:_pickerLocationLabel];
        
        
        _pickerPhotoImageView = [[UIImageView alloc] init];
        [_pickerPhotoImageView.layer setMasksToBounds:YES];
        [self.contentView addSubview:_pickerPhotoImageView];
        
        _lineLabel = [[UILabel alloc] init];
        _lineLabel.backgroundColor = [UIColor blackColor];
        [self.contentView addSubview:_lineLabel];
        
        [self layoutSubviews];
    }
    return self;
}

- (void)layoutSubviews {
    [_tipLabel mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.contentView.mas_top).offset(SIZE_HEIGHT * 0.02);
        make.bottom.equalTo(self.contentView.mas_bottom).offset(-SIZE_HEIGHT * 0.02);
        make.left.equalTo(self.contentView.mas_left).offset(SIZE_HEIGHT * 0.005);
        make.width.equalTo(@(SIZE_HEIGHT * 0.08));
    }];
    
    [_pickerPhotoImageView mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.contentView.mas_top).offset(SIZE_HEIGHT * 0.025);
        make.bottom.equalTo(self.contentView.mas_bottom).offset(-SIZE_HEIGHT * 0.025);
        make.right.equalTo(self.contentView.mas_right).offset(-SIZE_HEIGHT * 0.01);
        make.width.equalTo(@(SIZE_HEIGHT * 0.13));
    }];
    
    [_pickerNameLabel mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.pickerPhotoImageView.mas_top).offset(0);
        make.height.equalTo(@(SIZE_HEIGHT * 0.13 / 3));
        make.left.equalTo(self.tipLabel.mas_right).offset(SIZE_HEIGHT * 0.01);
        make.right.equalTo(self.pickerPhotoImageView.mas_left).offset(SIZE_HEIGHT * 0.01);
    }];
    
    [_pickerLocationLabel mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.pickerNameLabel.mas_bottom).offset(0);
        make.height.equalTo(@(SIZE_HEIGHT * 0.13 / 3));
        make.left.equalTo(self.tipLabel.mas_right).offset(SIZE_HEIGHT * 0.01);
        make.right.equalTo(self.pickerPhotoImageView.mas_left).offset(SIZE_HEIGHT * 0.01);
    }];
    
    [_pickerTimeLabel mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.pickerLocationLabel.mas_bottom).offset(0);
        make.height.equalTo(@(SIZE_HEIGHT * 0.13 / 3));
        make.left.equalTo(self.tipLabel.mas_right).offset(SIZE_HEIGHT * 0.01);
        make.right.equalTo(self.pickerPhotoImageView.mas_left).offset(SIZE_HEIGHT * 0.01);
    }];
    
    [_lineLabel mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.contentView.mas_top).offset(5);
        make.bottom.equalTo(self.contentView.mas_bottom).offset(-5);
        make.left.equalTo(self.tipLabel.mas_right);
        make.width.equalTo(@(0.5));
    }];
}

@end
