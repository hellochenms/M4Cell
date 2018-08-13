//
//  M4BigHitAreaView.m
//  M4Cell
//
//  Created by Chen,Meisong on 2018/8/13.
//  Copyright © 2018年 xyz.chenms. All rights reserved.
//

#import "M4BigHitAreaView.h"

@implementation M4BigHitAreaView

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    CGRect rect = UIEdgeInsetsInsetRect(self.bounds, self.hitInset);
    BOOL inside = CGRectContainsPoint(rect, point);
    
    return inside;
}

@end
