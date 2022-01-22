//
//  EventHandlingView.h
//  PUK
//
//  Created by 浪极 on 2022/1/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface EventHandlingView : UIView <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView* mainKidTableView;
@property (nonatomic, strong) UITableView* KidNameListTableView;
@property (nonatomic, strong) NSArray* KidNameListArray;

@end

NS_ASSUME_NONNULL_END
