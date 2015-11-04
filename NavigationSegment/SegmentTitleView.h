//
//  SegmentTitleView.h
//  NavigationSegment
//
//  Created by huchunyuan on 15/11/4.
//  Copyright © 2015年 huchunyuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SegmentTitleViewDelegate <NSObject>

- (void)titleViewChangePassString:(NSString *)str;

@end

@interface SegmentTitleView : UIView
@property (strong, nonatomic) id<SegmentTitleViewDelegate>delegate;
@end
