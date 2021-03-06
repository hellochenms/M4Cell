//
//  ExtraView.m
//  M4Cell
//
//  Created by Chen,Meisong on 2018/8/11.
//  Copyright © 2018年 xyz.chenms. All rights reserved.
//

#import "ExtraView.h"
#import "ExtraLayout.h"
#import "ExtraItemFactory.h"
#import "M4BigHitAreaLabel.h"

@interface ExtraView()
@property (nonatomic) M4BigHitAreaLabel *timeLabel;
@property (nonatomic) UILabel *siteLabel;
@property (nonatomic) M4BigHitAreaLabel *rightTimeLabel;
@property (nonatomic) UILabel *rightSiteLabel;
@property (nonatomic) ExtraLayout *layout;
@end

@implementation ExtraView
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor brownColor];
        
        [self addSubview:self.timeLabel];
        [self addSubview:self.siteLabel];
        [self addSubview:self.rightTimeLabel];
        [self addSubview:self.rightSiteLabel];
    }
    
    return self;
}

- (CGFloat)config:(Info *)info
     limitedWidth:(CGFloat)limitedWidth
         yPadding:(CGFloat *)yPadding {
    self.timeLabel.text = info.time;
    self.siteLabel.text = info.site;
    self.rightTimeLabel.text = info.time;
    self.rightSiteLabel.text = info.site;
    
    self.layout.limitedWidth = limitedWidth;
    [self.layout calc:info];
    
    self.timeLabel.frame = self.layout.timeRect;
    self.siteLabel.frame = self.layout.siteRect;
    self.rightTimeLabel.frame = self.layout.rightTimeRect;
    self.rightSiteLabel.frame = self.layout.rightSiteRect;
    
    *yPadding = self.layout.yPadding;
    
    return self.layout.height;
}

#pragma mark - Event
- (void)onTapTime {
    NSLog(@"【chenms】  %s", __func__);
}

- (void)onTapRightTime {
    NSLog(@"【chenms】  %s", __func__);
}

#pragma mark - Getter
- (UILabel *)timeLabel{
    if(!_timeLabel){
        _timeLabel = [[M4BigHitAreaLabel alloc] init];
        _timeLabel.hitInset = UIEdgeInsetsMake(-20, -20, -20, -20);
        _timeLabel.backgroundColor = [UIColor grayColor];
        _timeLabel.font = [ExtraItemFactory timeFont];
        
        _timeLabel.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTapTime)];
        [_timeLabel addGestureRecognizer:tap];
    }
    return _timeLabel;
}

- (UILabel *)siteLabel{
    if(!_siteLabel){
        _siteLabel = [[UILabel alloc] init];
        _siteLabel.backgroundColor = [UIColor grayColor];
        _siteLabel.font = [ExtraItemFactory siteFont];
    }
    return _siteLabel;
}

- (UILabel *)rightTimeLabel{
    if(!_rightTimeLabel){
        _rightTimeLabel = [[M4BigHitAreaLabel alloc] init];
        _rightTimeLabel.backgroundColor = [UIColor grayColor];
        _rightTimeLabel.font = [ExtraItemFactory timeFont];
        
        _rightTimeLabel.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTapRightTime)];
        [_rightTimeLabel addGestureRecognizer:tap];
    }
    return _rightTimeLabel;
}

- (UILabel *)rightSiteLabel{
    if(!_rightSiteLabel){
        _rightSiteLabel = [[UILabel alloc] init];
        _rightSiteLabel.backgroundColor = [UIColor grayColor];
        _rightSiteLabel.font = [ExtraItemFactory siteFont];
    }
    return _rightSiteLabel;
}

- (ExtraLayout *)layout {
    if(!_layout){
        _layout = [ExtraLayout new];
    }

    return _layout;
}
@end
