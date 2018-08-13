//
//  ExtraItemFactory.h
//  M4Cell
//
//  Created by Chen,Meisong on 2018/8/13.
//  Copyright © 2018年 xyz.chenms. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "M4ExtraHelper.h"
#import "Info.h"

@interface ExtraItemFactory : NSObject
+ (ExtraItem *)timeItem:(Info *)info;
+ (ExtraItem *)siteItem:(Info *)info;
+ (ExtraItem *)rightTimeItem:(Info *)info;
+ (ExtraItem *)rightSiteItem:(Info *)info;
+ (UIFont *)timeFont;
+ (UIFont *)siteFont;
@end
