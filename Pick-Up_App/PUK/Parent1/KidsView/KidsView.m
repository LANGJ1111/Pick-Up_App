//
//  KidsView.m
//  PUK
//
//  Created by mac on 2022/1/8.
//

#import "KidsView.h"
#import "Masonry.h"
#import "KidPhotoTableViewCell.h"
#define SIZE_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SIZE_HEIGHT ([UIScreen mainScreen].bounds.size.height)

@implementation KidsView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    self.backgroundColor = [UIColor yellowColor];
    
    _KidNameListArray = @[@"11111", @"22222", @"33333", @"44444", @"55555"];
    
    _KidNameListTableView = [[UITableView alloc] init];
    _KidNameListTableView.backgroundColor = [UIColor whiteColor];
    _KidNameListTableView.delegate = self;
    _KidNameListTableView.dataSource = self;
    _KidNameListTableView.tag = 401;
    [_KidNameListTableView.layer setMasksToBounds:YES];
    [_KidNameListTableView.layer setCornerRadius:10];
    [_KidNameListTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"KidNameListNormalCell"];
    [self addSubview:_KidNameListTableView];
    [_KidNameListTableView mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.mas_top).offset(SIZE_HEIGHT * 0.06);
        make.height.equalTo(@(SIZE_HEIGHT * 0.05));
        make.left.equalTo(self.mas_left).offset(SIZE_WIDTH * 0.2);
        make.width.equalTo(@(SIZE_WIDTH * 0.6));
    }];
    
    _mainKidTableView = [[UITableView alloc] init];
    _mainKidTableView.backgroundColor = [UIColor blackColor];
    _mainKidTableView.delegate = self;
    _mainKidTableView.dataSource = self;
    _mainKidTableView.tag = 402;
    [_mainKidTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"normal"];
    [_mainKidTableView registerClass:[KidPhotoTableViewCell class] forCellReuseIdentifier:@"KidPhoto"];
    [self addSubview:_mainKidTableView];
    [_mainKidTableView mas_makeConstraints:^(MASConstraintMaker* make) {
        make.top.equalTo(self.mas_top).offset(SIZE_HEIGHT * 0.12);
        make.height.equalTo(@(SIZE_HEIGHT * 0.88));
        make.left.equalTo(self.mas_left).offset(0);
        make.width.equalTo(@(SIZE_WIDTH));
    }];
    
    
    
    return self;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (tableView.tag == 401) {
        return _KidNameListArray.count;
    } else return 4;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (tableView.tag == 401) {
        return SIZE_HEIGHT * 0.05;
    }
    if (indexPath.row == 0) {
        return SIZE_HEIGHT * 0.25;
    } else {
        return SIZE_HEIGHT * 0.15;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (tableView.tag == 401) {
        UITableViewCell* KidNameListCell = [_KidNameListTableView dequeueReusableCellWithIdentifier:@"KidNameListNormalCell" forIndexPath:indexPath];
        KidNameListCell.textLabel.text = _KidNameListArray[indexPath.row];
        return KidNameListCell;
    }
    if (indexPath.row == 0) {
        KidPhotoTableViewCell* kidPhotoCell = [_mainKidTableView dequeueReusableCellWithIdentifier:@"KidPhoto" forIndexPath:indexPath];
        kidPhotoCell.kidPhotoImageView.backgroundColor = [UIColor blueColor];
        kidPhotoCell.schollNameLabel.text = @"学校：西安邮电小学";
        kidPhotoCell.gradeLabel.text = @"班级：三年二班";
        kidPhotoCell.kidNumberLabel.text = @"学号：1111111";
        kidPhotoCell.teacherNameLabel.text = @"班主任：xxx老师";
        kidPhotoCell.guardianNameLabel.text = @"监护人：xxx家长";
        
        return kidPhotoCell;
    }

    UITableViewCell* normalCell = [_mainKidTableView dequeueReusableCellWithIdentifier:@"normal" forIndexPath:indexPath];
    return normalCell;
}

@end
