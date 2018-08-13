//
//  ExtraLayout.h
//  M4Cell
//
//  Created by Chen,Meisong on 2018/8/13.
//  Copyright © 2018年 xyz.chenms. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Info.h"

@interface ExtraLayout : NSObject
@property (nonatomic) CGFloat limitedWidth;
@property (nonatomic) CGRect timeRect;
@property (nonatomic) CGRect siteRect;
@property (nonatomic) CGRect rightTimeRect;
@property (nonatomic) CGRect rightSiteRect;
@property (nonatomic) CGFloat height;
@property (nonatomic) CGFloat yPadding;
- (void)calc:(Info *)info;
@end
