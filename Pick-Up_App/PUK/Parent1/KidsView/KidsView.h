//
//  KidsView.h
//  PUK
//
//  Created by mac on 2022/1/8.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface KidsView : UIView <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView* mainKidTableView;
@property (nonatomic, strong) UITableView* KidNameListTableView;
@property (nonatomic, strong) NSArray* KidNameListArray;

@end

NS_ASSUME_NONNULL_END
