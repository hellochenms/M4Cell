//
//  ExtraLayout.m
//  M4Cell
//
//  Created by Chen,Meisong on 2018/8/13.
//  Copyright © 2018年 xyz.chenms. All rights reserved.
//

#import "ExtraLayout.h"
#import "M4ExtraHelper.h"
#import "ExtraItemFactory.h"

static NSString * const kTimeKey = @"kTimeKey";
static NSString * const kSiteKey = @"kSiteKey";
static NSString * const kRightTimeKey = @"kRightTimeKey";
static NSString * const kRightSiteKey = @"kRightSiteKey";

@interface ExtraLayout()
@property (nonatomic) NSMutableArray<ExtraItem *> *leftItems;
@property (nonatomic) NSMutableArray<ExtraItem *> *rightItems;
@property (nonatomic) ExtraItem *standardItem;
//@property (nonatomic) NSMutableDictionary<NSString *, ExtraItem *> *itemDict;
@end

@implementation ExtraLayout
- (void)calc:(Info *)info {
    [self.leftItems removeAllObjects];
    [self.rightItems removeAllObjects];
    
    ExtraItem *timeItem = [ExtraItemFactory timeItem:info];
    [self.leftItems addObject:timeItem];
//    self.standardItem = timeItem;
    
    ExtraItem *siteItem = [ExtraItemFactory siteItem:info];
    [self.leftItems addObject:siteItem];
    self.standardItem = siteItem;
    
    ExtraItem *rightTimeItem = [ExtraItemFactory rightTimeItem:info];
    [self.rightItems addObject:rightTimeItem];
    
    ExtraItem *rightSiteItem = [ExtraItemFactory rightSiteItem:info];
    [self.rightItems addObject:rightSiteItem];
    
    CGFloat height = [M4ExtraHelper heightForLeftItems:self.leftItems
                                            rightItems:self.rightItems];
    self.height = height;
    self.yPadding = (self.height - self.standardItem.size.height) / 2;
    
    
    [M4ExtraHelper processLeftItems:self.leftItems height:height];
    self.timeRect = timeItem.rect;
    self.siteRect = siteItem.rect;
    
    [M4ExtraHelper processRightItems:self.rightItems height:height width:self.limitedWidth];
    self.rightTimeRect = rightTimeItem.rect;
    self.rightSiteRect = rightSiteItem.rect;
}

#pragma mark - Getter
- (NSMutableArray<ExtraItem *> *)leftItems {
    if(!_leftItems){
        _leftItems = [NSMutableArray<ExtraItem *> new];
    }

    return _leftItems;
}
- (NSMutableArray<ExtraItem *> *)rightItems {
    if(!_rightItems){
        _rightItems = [NSMutableArray<ExtraItem *> new];
    }

    return _rightItems;
}

//- (NSMutableDictionary<NSString *, ExtraItem *> *)itemDict {
//    if(!_itemDict){
//        _itemDict = [NSMutableDictionary<NSString *, ExtraItem *> new];
//    }
//
//    return _itemDict;
//}
@end
