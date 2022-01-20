//
//  KidPhotoTableViewCell.m
//  PUK
//
//  Created by mac on 2022/1/18.
//

#import "KidPhotoTableViewCell.h"
#import "Masonry.h"
#define SIZE_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SIZE_HEIGHT ([UIScreen mainScreen].bounds.size.height)

@implementation KidPhotoTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if ([self.reuseIdentifier isEqualToString:@"KidPhoto"]) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.backgroundColor = [UIColor lightGrayColor];
        [self.layer setMasksToBounds:YES];
        [self.layer setCornerRadius:20];
        
        _schollNameLabel = [[UILabel alloc] init];
        _schollNameLabel.font = [UIFont systemFontOfSize:20];
        _schollNameLabel.textColor = [UIColor blackColor];
        [self.contentView addSubview:_schollNameLabel];
        
        _gradeLabel = [[UILabel alloc] init];
        _gradeLabel.font = [UIFont systemFontOfSize:20];
        _gradeLabel.textColor = [UIColor blackColor];
        [self.contentView addSubview:_gradeLabel];
        
        _kidNumberLabel = [[UILabel alloc] init];
        _kidNumberLabel.font = [UIFont systemFontOfSize:20];
        _kidNumberLabel.textColor = [UIColor blackColor];
        [self.contentView addSubview:_kidNumberLabel];
        
        _teacherNameLabel = [[UILabel alloc] init];
        _teacherNameLabel.font = [UIFont systemFontOfSize:20];
        _teacherNameLabel.textColor = [UIColor blackColor];
        [self.contentView addSubview:_teacherNameLabel];
        
        _guardianNameLabel = [[UILabel alloc] init];
        _guardianNameLabel.font = [UIFont systemFontOfSize:20];
        _guardianNameLabel.textColor = [UIColor blackColor];
        [self.contentView addSubview:_guardianNameLabel];
        
        _kidPhotoImageView = [[UIImageView alloc] init];
        [_kidPhotoImageView.layer setMasksToBounds:YES];
        [self.contentView addSubview:_kidPhotoImageView];
        
        [self layoutSubviews];
    }
    return self;
}

- (void)layoutSubviews {
    [_kidPhotoImageView mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.contentView.mas_top).offset(SIZE_HEIGHT * 0.02);
        make.bottom.equalTo(self.contentView.mas_bottom).offset(-SIZE_HEIGHT * 0.02);
        make.left.equalTo(self.contentView.mas_left).offset(SIZE_HEIGHT * 0.01);
        make.width.equalTo(@(SIZE_HEIGHT * 0.21));
    }];
    
    [_schollNameLabel mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.kidPhotoImageView.mas_top).offset(0);
        make.height.equalTo(@(SIZE_HEIGHT * 0.21 / 5));
        make.left.equalTo(_kidPhotoImageView.mas_right).offset(SIZE_HEIGHT * 0.01);
        make.right.equalTo(self.contentView.mas_right).offset(0);
    }];
    
    [_gradeLabel mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.schollNameLabel.mas_bottom).offset(0);
        make.height.equalTo(@(SIZE_HEIGHT * 0.21 / 5));
        make.left.equalTo(_kidPhotoImageView.mas_right).offset(SIZE_HEIGHT * 0.01);
        make.right.equalTo(self.contentView.mas_right).offset(0);
    }];
    
    [_kidNumberLabel mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.gradeLabel.mas_bottom).offset(0);
        make.height.equalTo(@(SIZE_HEIGHT * 0.21 / 5));
        make.left.equalTo(_kidPhotoImageView.mas_right).offset(SIZE_HEIGHT * 0.01);
        make.right.equalTo(self.contentView.mas_right).offset(0);
    }];
    
    [_teacherNameLabel mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.kidNumberLabel.mas_bottom).offset(0);
        make.height.equalTo(@(SIZE_HEIGHT * 0.21 / 5));
        make.left.equalTo(_kidPhotoImageView.mas_right).offset(SIZE_HEIGHT * 0.01);
        make.right.equalTo(self.contentView.mas_right).offset(0);
    }];
    
    [_guardianNameLabel mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.teacherNameLabel.mas_bottom).offset(0);
        make.height.equalTo(@(SIZE_HEIGHT * 0.21 / 5));
        make.left.equalTo(_kidPhotoImageView.mas_right).offset(SIZE_HEIGHT * 0.01);
        make.right.equalTo(self.contentView.mas_right).offset(0);
    }];
    
}

@end
