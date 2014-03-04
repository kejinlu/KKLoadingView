//
//  KKLoadingView.m
//  KKLoadingView
//
//  Created by Luke on 1/14/14.
//  Copyright (c) 2014 Geeklu.com. All rights reserved.
//

#import "KKLoadingView.h"
#import "KKLoadingIndicatorView.h"

static CGFloat kContainerWidth = 64;
static CGFloat kContainerHeight = 52;


@implementation KKLoadingView

- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        UIView *containerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kContainerWidth, kContainerHeight)];
        containerView.backgroundColor = [UIColor clearColor];
        
        KKLoadingIndicatorView *loadingIndicatorView = [[KKLoadingIndicatorView alloc] initWithLoadingIndicatorStyle:KKLoadingIndicatorViewStyleBlack];
        loadingIndicatorView.autoresizingMask = UIViewAutoresizingFlexibleBottomMargin;
        [containerView addSubview:loadingIndicatorView];
        
        _loadingLabel = [[UILabel alloc] init];
        _loadingLabel.backgroundColor = [UIColor clearColor];
        _loadingLabel.textColor = [UIColor colorWithWhite:177/255.0 alpha:1];
        _loadingLabel.font = [UIFont systemFontOfSize:16.0];
        _loadingLabel.textAlignment = NSTextAlignmentCenter;
        _loadingLabel.text = @"Loading";
        [_loadingLabel sizeToFit];
        _loadingLabel.frame = CGRectMake(0, kContainerHeight - CGRectGetHeight(_loadingLabel.frame), kContainerWidth, CGRectGetHeight(_loadingLabel.frame));
        [containerView addSubview:_loadingLabel];
        
        containerView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin|UIViewAutoresizingFlexibleBottomMargin|UIViewAutoresizingFlexibleRightMargin|UIViewAutoresizingFlexibleTopMargin;
        containerView.center = CGPointMake(CGRectGetWidth(self.bounds)/2.0, CGRectGetHeight(self.bounds)/2.0);
        [self addSubview:containerView];
    }
    return self;
}

@end
