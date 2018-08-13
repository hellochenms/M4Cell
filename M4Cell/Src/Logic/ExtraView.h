//
//  ExtraView.h
//  M4Cell
//
//  Created by Chen,Meisong on 2018/8/11.
//  Copyright © 2018年 xyz.chenms. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Info.h"

@interface ExtraView : UIView
- (CGFloat)config:(Info *)info
     limitedWidth:(CGFloat)limitedWidth
         yPadding:(CGFloat *)yPadding;
@end
