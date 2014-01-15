//
//  KKLoadingIndicatorView.m
//  KKLoadingView
//
//  Created by Luke on 1/14/14.
//  Copyright (c) 2014 Geeklu.com. All rights reserved.
//

#import "KKLoadingIndicatorView.h"
#import <QuartzCore/QuartzCore.h>

static CGFloat KKLoadingIndicatorViewWidth = 64;
static CGFloat KKLoadingIndicatorViewHeight = 20;



@implementation KKLoadingIndicatorView


- (id)initWithLoadingViewStyle:(KKLoadingIndicatorViewStyle)style{
    self = [super initWithFrame:CGRectMake(0, 0, KKLoadingIndicatorViewWidth, KKLoadingIndicatorViewHeight)];
    if (self) {
        UIColor *indicatorColor = [UIColor blackColor];
        switch (style) {
            case KKLoadingIndicatorViewStyleBlack:
                indicatorColor = [UIColor blackColor];
                break;
            case KKLoadingIndicatorViewStyleWhite:
                indicatorColor = [UIColor whiteColor];
                break;
            default:
                break;
        }
        
        NSTimeInterval beginTime = CACurrentMediaTime();
        
        for (NSInteger i = 0; i < 3; i++) {
            CALayer *layer = [CALayer layer];
            layer.backgroundColor = indicatorColor.CGColor;
            layer.cornerRadius = 4.0;
            layer.frame = CGRectMake(24 * i, 2, 16, 16);
            [self.layer addSublayer:layer];
            
            CAKeyframeAnimation *opacityAnimation = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
            opacityAnimation.removedOnCompletion = NO;
            opacityAnimation.removedOnCompletion = NO;
            opacityAnimation.beginTime = beginTime + 0.1 * i;
            opacityAnimation.duration = 0.7;
            opacityAnimation.repeatCount = HUGE_VALF;
            
            opacityAnimation.keyTimes = @[@(0.0), @(0.5), @(1.0)];
            
            opacityAnimation.timingFunctions = @[
                                                 [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
                                                 [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
                                                 [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]
                                                 ];
            
            opacityAnimation.values = @[
                                        [NSNumber numberWithFloat:0.1],
                                        [NSNumber numberWithFloat:0.25],
                                        [NSNumber numberWithFloat:0.1]
                                        ];
            
            
            
            CAKeyframeAnimation *transformAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
            transformAnimation.removedOnCompletion = NO;
            transformAnimation.beginTime = beginTime + 0.1 * i;
            transformAnimation.duration = 0.7;
            transformAnimation.repeatCount = HUGE_VALF;
            
            transformAnimation.keyTimes = @[@(0.0), @(0.5), @(1.0)];
            
            transformAnimation.timingFunctions = @[
                                     [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
                                     [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
                                     [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]
                                     ];
            
            transformAnimation.values = @[
                            [NSValue valueWithCATransform3D:CATransform3DMakeScale(1.0, 1.0, 0.0)],
                            [NSValue valueWithCATransform3D:CATransform3DMakeScale(1.0, 1.25, 0.0)],
                            [NSValue valueWithCATransform3D:CATransform3DMakeScale(1.0, 1.0, 0.0)]
                            ];
            
            [layer addAnimation:transformAnimation forKey:@"transformAnimation"];
            [layer addAnimation:opacityAnimation forKey:@"opacityAnimation"];
        }
        
    }
    return self;
}


@end
