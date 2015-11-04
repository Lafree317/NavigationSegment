//
//  SegmentTitleView.m
//  NavigationSegment
//
//  Created by huchunyuan on 15/11/4.
//  Copyright © 2015年 huchunyuan. All rights reserved.
//

#import "SegmentTitleView.h"

@interface SegmentTitleView ()
@property (strong, nonatomic) NSMutableArray *btArr;
@property (strong, nonatomic) UIView *sliderView;
@end

@implementation SegmentTitleView



- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        // 创建button
        for (int i = 0; i < 2; i++) {
            UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
            button.frame = CGRectMake(i*80, 0, 80, 30);
            button.titleLabel.font = [UIFont systemFontOfSize:25];
            [button  setTitleColor:[UIColor colorWithRed:153/255.0 green:153/255.0 blue:153/255.0 alpha:1] forState:(UIControlStateNormal)];
            [button setTitleColor:[UIColor blackColor] forState:(UIControlStateSelected)];
            [button addTarget:self action:@selector(btClick:) forControlEvents:(UIControlEventTouchUpInside)];
            if (i == 0) {
                [button setTitle:@"左" forState:(UIControlStateNormal)];
            }else{
                [button setTitle:@"右" forState:(UIControlStateNormal)];

            }
            // 添加数组
            [self.btArr addObject:button];
            [self addSubview:button];
        }
        
        
        // 创建滑块
        _sliderView = [[UIView alloc] initWithFrame:CGRectMake(0,self.frame.size.height-2, 80, 2)];
        _sliderView.backgroundColor = [UIColor grayColor];
        [self addSubview:self.sliderView];
    }
    return self;
}

// 懒加载
- (NSMutableArray *)btArr{
    if (!_btArr) {
        _btArr = [NSMutableArray array];
    }
    return _btArr;
}
// 点击事件
- (void)btClick:(UIButton *)button{
    // 选中状态
    button.selected = YES;
    for (UIButton *subBt in self.btArr) {
        if (subBt != button) {
            subBt.selected = NO;
        }
    }
    // 计算位移
    CGRect sliderViewRect = self.sliderView.frame;
    if ([button.titleLabel.text isEqualToString:@"左"]) {
        sliderViewRect = CGRectMake(0, self.frame.size.height-2, 80, 2);

    }else{
        sliderViewRect = CGRectMake(80, self.frame.size.height-2, 80, 2);
    }
    // 动画
    [UIView animateWithDuration:0.2 animations:^{
        self.sliderView.frame = sliderViewRect;
    }];
}


@end
