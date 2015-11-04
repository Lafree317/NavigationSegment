//
//  ViewController.m
//  NavigationSegment
//
//  Created by huchunyuan on 15/11/3.
//  Copyright © 2015年 huchunyuan. All rights reserved.
//

#import "ViewController.h"
#import "SegmentTitleView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SegmentTitleView *segmentView = [[SegmentTitleView alloc] initWithFrame:CGRectMake(0, 0, 160, 40)];
    self.navigationItem.titleView = segmentView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
