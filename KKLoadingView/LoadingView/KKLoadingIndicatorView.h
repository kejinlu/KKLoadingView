//
//  KKLoadingIndicatorView.h
//  KKLoadingView
//
//  Created by Luke on 1/14/14.
//  Copyright (c) 2014 Geeklu.com. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, KKLoadingIndicatorViewStyle) {
    KKLoadingIndicatorViewStyleBlack = 0,
    KKLoadingIndicatorViewStyleWhite = 1
};

@interface KKLoadingIndicatorView : UIView

- (id)initWithLoadingIndicatorStyle:(KKLoadingIndicatorViewStyle)style;

@end
