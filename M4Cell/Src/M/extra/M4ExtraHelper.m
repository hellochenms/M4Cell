//
//  ExtraHelper.m
//  M4Cell
//
//  Created by Chen,Meisong on 2018/8/11.
//  Copyright © 2018年 xyz.chenms. All rights reserved.
//

#import "M4ExtraHelper.h"

@implementation M4ExtraHelper
+ (CGFloat)heightForLeftItems:(NSMutableArray<ExtraItem *> *)leftItems
                   rightItems:(NSMutableArray<ExtraItem *> *)rightItems {
    __block CGFloat height = 0;
    [leftItems enumerateObjectsUsingBlock:^(ExtraItem *  _Nonnull item, NSUInteger idx, BOOL * _Nonnull stop) {
        height = MAX(height, item.size.height);
    }];
    [rightItems enumerateObjectsUsingBlock:^(ExtraItem *  _Nonnull item, NSUInteger idx, BOOL * _Nonnull stop) {
        height = MAX(height, item.size.height);
    }];
    
    return height;
}

+ (void)processLeftItems:(NSMutableArray<ExtraItem *> *)items
                  height:(CGFloat)height {
    __block ExtraItem *pre = nil;
    [items enumerateObjectsUsingBlock:^(ExtraItem * _Nonnull item, NSUInteger idx, BOOL * _Nonnull stop) {
        CGRect rect = CGRectMake(0, 0, item.size.width, item.size.height);
        rect.origin.x = (pre ? CGRectGetMaxX(pre.rect) + item.leftMargin : 0);
        rect.origin.y = (height - item.size.height) / 2;
        item.rect = rect;
        
        pre = item;
    }];
}

+ (void)processRightItems:(NSMutableArray<ExtraItem *> *)items
                   height:(CGFloat)height
                    width:(CGFloat)width {
    __block ExtraItem *pre = nil;
    [items enumerateObjectsUsingBlock:^(ExtraItem * _Nonnull item, NSUInteger idx, BOOL * _Nonnull stop) {
        CGRect rect = CGRectMake(0, 0, item.size.width, item.size.height);
        rect.origin.x = (pre
                         ? (CGRectGetMinX(pre.rect) - item.rightMargin - item.size.width)
                         : (width - item.size.width));
        rect.origin.y = (height - item.size.height) / 2;
        item.rect = rect;
        
        pre = item;
    }];
}

@end

@implementation ExtraItem

@end
