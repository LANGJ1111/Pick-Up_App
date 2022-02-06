//
//  PickerSettingView.m
//  PUK
//
//  Created by 浪极 on 2022/2/6.
//

#import "PickerSettingView.h"
#import "Masonry.h"
#define SIZE_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SIZE_HEIGHT ([UIScreen mainScreen].bounds.size.height)


@implementation PickerSettingView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    self.backgroundColor = [UIColor whiteColor];
    
    _settingArray = @[@"账号管理", @"隐私设置", @"联系客服", @"关于我们"];
    
    _pickerSettingTableView = [[UITableView alloc] init];
    _pickerSettingTableView.backgroundColor = [UIColor grayColor];
    _pickerSettingTableView.delegate = self;
    _pickerSettingTableView.dataSource = self;
    [_pickerSettingTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"SettingCell"];
    [_pickerSettingTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"normal"];
    [self addSubview:_pickerSettingTableView];
    [_pickerSettingTableView mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.mas_top).offset(0);
        make.height.equalTo(@(SIZE_HEIGHT));
        make.left.equalTo(self.mas_left).offset(0);
        make.width.equalTo(@(SIZE_WIDTH));
    }];
    
    _pickerNameLabel = [[UILabel alloc] init];
    _pickerNameLabel.text = @"赵一";
    _pickerNameLabel.font = [UIFont systemFontOfSize:33];
    _pickerNameLabel.textColor = [UIColor blackColor];
    _pickerNameLabel.textAlignment = NSTextAlignmentLeft;
    
    
    _pickerPhotoImage = [[UIImageView alloc] init];
    _pickerPhotoImage.image = [UIImage imageNamed:@"pic10.jpg"];
    [_pickerPhotoImage.layer setMasksToBounds:YES];
    [_pickerPhotoImage.layer setCornerRadius:8];
    
    return self;
    
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        return SIZE_HEIGHT* 0.15;
    }
    return SIZE_HEIGHT * 0.07;

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        UITableViewCell* SettingNormalCell = [_pickerSettingTableView dequeueReusableCellWithIdentifier:@"SettingCell" forIndexPath:indexPath];
        [SettingNormalCell addSubview:_pickerPhotoImage];
        [_pickerPhotoImage mas_makeConstraints:^(MASConstraintMaker* make) {
            make.centerY.equalTo(SettingNormalCell.mas_centerY);
            make.height.equalTo(@(SIZE_WIDTH * 0.2));
            make.left.equalTo(@(SIZE_WIDTH * 0.01));
            make.width.equalTo(@(SIZE_WIDTH * 0.2));
        }];
        
        [SettingNormalCell addSubview:_pickerNameLabel];
        [_pickerNameLabel mas_makeConstraints:^(MASConstraintMaker* make) {
            make.centerY.equalTo(SettingNormalCell.mas_centerY).offset(0);
            make.height.equalTo(@(SIZE_WIDTH * 0.1));
            make.left.equalTo(self.pickerPhotoImage.mas_right).offset(SIZE_WIDTH * 0.1);
            make.right.equalTo(SettingNormalCell.mas_right).offset(-SIZE_WIDTH * 0.04);
        }];
        return SettingNormalCell;
    }
    UITableViewCell* normalCell = [_pickerSettingTableView dequeueReusableCellWithIdentifier:@"normal" forIndexPath:indexPath];
    normalCell.textLabel.text = _settingArray[indexPath.row-1];
    return normalCell;
}
@end

