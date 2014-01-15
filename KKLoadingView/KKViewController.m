//
//  KKViewController.m
//  KKLoadingView
//
//  Created by Luke on 1/16/14.
//  Copyright (c) 2014 Geeklu.com. All rights reserved.
//

#import "KKViewController.h"
#import "KKLoadingView.h"

@interface KKViewController ()

@end

@implementation KKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    KKLoadingView *loadingView = [[KKLoadingView alloc] initWithFrame:self.view.bounds];
    loadingView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self.view addSubview:loadingView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
