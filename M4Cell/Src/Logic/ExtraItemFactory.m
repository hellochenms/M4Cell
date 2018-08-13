//
//  ExtraItemFactory.m
//  M4Cell
//
//  Created by Chen,Meisong on 2018/8/13.
//  Copyright © 2018年 xyz.chenms. All rights reserved.
//

#import "ExtraItemFactory.h"

@implementation ExtraItemFactory
+ (ExtraItem *)timeItem:(Info *)info {
    ExtraItem *item = [ExtraItem new];
    CGRect rect = [info.time boundingRectWithSize:CGSizeMake(80, MAXFLOAT)
                            options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading|NSStringDrawingTruncatesLastVisibleLine
                         attributes:@{NSFontAttributeName:[self timeFont]}
                            context:nil];
    item.size = rect.size;
    item.leftMargin = 10;
    
    return item;
}

+ (ExtraItem *)siteItem:(Info *)info {
    ExtraItem *item = [ExtraItem new];
    CGRect rect = [info.site boundingRectWithSize:CGSizeMake(80, MAXFLOAT)
                                          options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading|NSStringDrawingTruncatesLastVisibleLine
                                       attributes:@{NSFontAttributeName:[self siteFont]}
                                          context:nil];
    item.size = rect.size;
    item.leftMargin = 10;
    
    return item;
}

+ (ExtraItem *)rightTimeItem:(Info *)info {
    ExtraItem *item = [ExtraItem new];
    CGRect rect = [info.time boundingRectWithSize:CGSizeMake(80, MAXFLOAT)
                                          options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading|NSStringDrawingTruncatesLastVisibleLine
                                       attributes:@{NSFontAttributeName:[self timeFont]}
                                          context:nil];
    item.size = rect.size;
    item.rightMargin = 10;
    
    return item;
}

+ (ExtraItem *)rightSiteItem:(Info *)info {
    ExtraItem *item = [ExtraItem new];
    CGRect rect = [info.site boundingRectWithSize:CGSizeMake(80, MAXFLOAT)
                                          options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading|NSStringDrawingTruncatesLastVisibleLine
                                       attributes:@{NSFontAttributeName:[self siteFont]}
                                          context:nil];
    item.size = rect.size;
    item.rightMargin = 10;
    
    return item;
}

#pragma mark -
+ (UIFont *)timeFont {
    return [UIFont systemFontOfSize:20];
}

+ (UIFont *)siteFont {
    return [UIFont systemFontOfSize:10];
}

@end
