//
//  ExtraHelper.h
//  M4Cell
//
//  Created by Chen,Meisong on 2018/8/11.
//  Copyright © 2018年 xyz.chenms. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class ExtraItem;

@interface M4ExtraHelper : NSObject
+ (CGFloat)heightForLeftItems:(NSMutableArray<ExtraItem *> *)leftItems
                   rightItems:(NSMutableArray<ExtraItem *> *)rightItems;
+ (void)processLeftItems:(NSMutableArray<ExtraItem *> *)items
                  height:(CGFloat)height;
+ (void)processRightItems:(NSMutableArray<ExtraItem *> *)items
                   height:(CGFloat)height
                    width:(CGFloat)width;
@end

@interface ExtraItem : NSObject
@property (nonatomic) CGSize size;
@property (nonatomic) CGFloat leftMargin;
@property (nonatomic) CGFloat rightMargin;
@property (nonatomic) CGRect rect;
@end
