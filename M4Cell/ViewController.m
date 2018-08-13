//
//  ViewController.m
//  M4Cell
//
//  Created by Chen,Meisong on 2018/8/11.
//  Copyright © 2018年 xyz.chenms. All rights reserved.
//

#import "ViewController.h"
#import "ExtraView.h"
#import "Info.h"

@interface ViewController ()
@property (nonatomic) ExtraView *extraView;
@property (nonatomic) UIView *someView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view addSubview:self.someView];
    self.someView.frame = CGRectMake(100, 100, 100, 100);
    
    self.extraView = [ExtraView new];
    [self.view addSubview:self.extraView];
    
    [self.view bringSubviewToFront:self.someView];
}

#pragma mark - Event
- (IBAction)onTapRefresh:(id)sender {
    Info *info = [Info new];
    info.time = @"几分钟前";
    info.site = @"某家权威报纸";
    CGFloat width = 300;
    CGFloat yPadding = 0;
    CGFloat height = [self.extraView config:info limitedWidth:width yPadding:&yPadding];
    CGFloat originY = CGRectGetMaxY(self.someView.frame) - yPadding;
    self.extraView.frame = CGRectMake(20, originY, width, height);
}

- (UIView *)someView{
    if(!_someView){
        _someView = [[UIView alloc] init];
        _someView.backgroundColor = [[UIColor blueColor] colorWithAlphaComponent:0.5];
    }
    
    return _someView;
}

@end
